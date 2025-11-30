<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class IndianInstitutionsSeeder extends Seeder
{
    public function run(): void
    {
        $cursor = "*";     // OpenAlex cursor pagination
        $batchLimit = 20;   // max 5 requests
        $delayMs = 500;    // 500ms gap between calls

        $baseUrl = "https://api.openalex.org/institutions";

        for ($i = 1; $i <= $batchLimit; $i++) {

            $response = Http::get($baseUrl, [
                "filter" => "country_code:IN",
                "per-page" => 200,
                "cursor" => $cursor
            ]);

            if ($response->failed()) {
                $this->command->error("Request $i failed.");
                break;
            }

            $json = $response->json();

            $data = $json['results'] ?? [];
            $nextCursor = $json['meta']['next_cursor'] ?? null;

            $count = count($data);
            $this->command->info("Request $i → Received: $count institutions");

            // Stop if no more data
            if ($count === 0) {
                $this->command->warn("No more Indian institutes available. Stopping.");
                break;
            }

            // Store in DB
            foreach ($data as $item) {
                \App\Models\Institution::updateOrCreate(
                    ['name' => $item['display_name']],
                    [
                        'city' => $item['geo']['city'] ?? null,
                        'country' => $item['country_code'] ?? 'IN',
                        'website' => $item['homepage_url'] ?? null,
                        'domain' => $item['ids']['openalex'] ?? null,
                        'is_verified' => $item['is_global_south'] ?? 0,
                    ]
                );
            }

            // If OpenAlex has no next cursor, stop
            if (!$nextCursor) {
                $this->command->warn("Pagination ended.");
                break;
            }

            $cursor = $nextCursor;

            // Wait 500ms before next API call
            usleep($delayMs * 1000);
        }
    }
}
