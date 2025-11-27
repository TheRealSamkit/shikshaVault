<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    use RegistersUsers;

    // WHERE TO GO AFTER REGISTRATION
    protected $redirectTo = '/dashboard';

    /**
     * Get a validator for an incoming registration request.
     * * FLOW: 
     * 1. User hits "Register".
     * 2. This function checks the inputs BEFORE touching the database.
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            // We added 'username' validation
            'username' => ['required', 'string', 'max:255', 'unique:users'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            // 'confirmed' means it looks for a field called password_confirmation
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     * * FLOW:
     * 1. If validation passes, this function runs.
     * 2. It creates the row in your 'users' table.
     */
    protected function create(array $data)
    {
        return User::create([
            'username' => $data['username'], // Added from your form
            'email' => $data['email'],
            'password' => Hash::make($data['password']),

            // DEFAULT VALUES FOR YOUR APP
            // Since the form doesn't ask for these, we hard-code the defaults here.
            'role' => 'user',
            'tokens' => 15,    // Start with 0 tokens
            'status' => 'active',
            'avatar' => 'default_avatar.png', // You need a default image
            'profile_visibility' => 'public',
        ]);
    }
}