@props(['error' => false])

@if ($error)
    <p class="mt-1 text-sm text-red-500">{{ $error }}</p>
@endif