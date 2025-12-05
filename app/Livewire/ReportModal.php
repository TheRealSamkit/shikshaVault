<?php
namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use App\Models\DigitalFile;
use Illuminate\Support\Facades\Auth;
use App\Models\Report;

class ReportModal extends Component
{
    public $showReportModal = false;
    public $slug = '';
    public $title = '';
    public $reportReason = '';
    public $reportDetails = '';


    #[On('open-report-modal')]
    public function open($slug, $title = 'Report File')
    {
        $this->slug = $slug;
        $this->title = $title;
        $this->showReportModal = true;
    }

    public function close()
    {
        $this->showReportModal = false;
        $this->slug = '';
        $this->reportReason = '';
        $this->reportDetails = '';
    }

    public function submitReport()
    {
        if (!Auth::check())
            return redirect()->route('login');
        $file = DigitalFile::where('slug', $this->slug)->firstOrFail();

        if (
            Report::where('reporter_id', Auth::id())
                ->where('reportable_id', $file->id)
                ->where('reportable_type', DigitalFile::class)
                ->exists()
        ) {
            $this->dispatch('toast', type: 'error', message: 'You have already reported this file.');
            return;
        }

        $this->validate([
            'reportReason' => 'required|string',
            'reportDetails' => 'nullable|string|max:1000'
        ]);

        Report::create([
            'reporter_id' => Auth::id(),
            'reportable_type' => DigitalFile::class,
            'reportable_id' => $file->id,
            'reason' => $this->reportReason,
            'details' => $this->reportDetails,
            'status' => 'pending'
        ]);
        $this->dispatch('toast', type: 'success', message: 'Thanks for your report. We will review it shortly.');
        $this->reset(['reportReason', 'reportDetails']);
        $this->close();
    }

    public function render()
    {
        return view('livewire.report-modal');
    }
}
