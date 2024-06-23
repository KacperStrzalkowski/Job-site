<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rules\File;
use Illuminate\Validation\Rules\Password;

class RegisteredUserController extends Controller
{
    public function create(){
        return view('auth.register');
    }

    public function store(Request $request)
    {
        $userAttr = $request->validate([
            'name' => ['required', 'min:3'],
            'email' => ['required', 'min:3', 'email', 'unique:users,email'],
            'password' => ['required', 'confirmed', Password::min(6)]
        ]);

        $employerAttr = $request->validate([
            'employer' => ['required', 'min:3', 'unique:employers,name'],
            'logo' => ['required', File::types(['png', 'jpg', 'webp'])]
        ]);

        $user = User::create($userAttr);

        $logoPath = $request->logo->store('logos');

        $user->employer()->create([
            'name' => $employerAttr['employer'],
            'logo' => $logoPath
        ]);

        Auth::login($user);

        return redirect('/');
        
    }

}