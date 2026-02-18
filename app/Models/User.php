<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class User extends Authenticatable implements MustVerifyEmail
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'username',
        'email',
        'password',
        'avatar',
        'role',
        'status',
        'tokens',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    /**
     * Check if user has sufficient tokens.
     */
    public function hasTokens(int $amount): bool
    {
        return $this->tokens >= $amount;
    }

    /**
     * Debit tokens from user.
     */
    public function debitTokens(int $amount)
    {
        $this->decrement('tokens', $amount);
    }

    /**
     * Credit tokens to user.
     */
    public function creditTokens(int $amount)
    {
        $this->increment('tokens', $amount);
    }

    // ─── Relationships ──────────────────────────────────────

    public function bookmarks(): HasMany
    {
        return $this->hasMany(Bookmark::class);
    }

    public function bookmarkedFiles(): BelongsToMany
    {
        return $this->belongsToMany(DigitalFile::class, 'bookmarks', 'user_id', 'file_id');
    }

    public function fileCollections(): HasMany
    {
        return $this->hasMany(FileCollection::class);
    }

    public function uploads(): HasMany
    {
        return $this->hasMany(DigitalFile::class);
    }
}
