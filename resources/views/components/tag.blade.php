@props(['tag','size' => 'base'])
@php
    $classes = 'bg-white/10 hover:bg-white/25 rounded-xl font-bold transition-colors duration-200';

    if($size == 'base'){
        $classes .= ' px-4 py-1 text-xs';
    }

    if($size == 'small'){
        $classes .= ' px-2 py-1 text-2xs';
    }
@endphp

<a href="/tags/{{ $tag->name }}" class="{{ $classes }}">
    {{ $tag->name }}
</a>