<!DOCTYPE html>
<html lang="{{ str_replace('_', "-", app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pixel position</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hanken+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
    @vite(['resources/js/app.js'])
</head>
<body class='bg-black text-white font-hanken-grotesk'>
    <div class='px-10'>
        <nav class='flex justify-between items-center py-4 border-b border-white/10'>
            <div> 
                <a href="/">
                    <img src="{{ Vite::asset('resources/images/logo.svg') }}">
                </a>
            </div>
            <div class='space-x-6 font-bold'> 
                <a href="/">Jobs</a>
                <a href="#">Careers</a>
                <a href="#">Salaries</a>
                <a href="#">Companies</a>
            </div>
            <div class='flex items-center gap-x-3'>
                @guest
                    <a href="/login">Log In</a>
                    <a href="/register">Sing Up</a>
                @endguest
                @auth
                    <a href="/jobs/create">Post a Job</a>
                    <form action="/logout" method="POST">
                        @csrf
                        @method('delete')
                        <x-forms.button type="submit">Logout</x-forms.button>
                    </form>
                @endauth
            </div>
        </nav>
        
        <main class='mt-10 max-w-[968px] m-auto'>
            {{ $slot }}
        </main>
    </div>
</body>
</html>