@php
    $classes = 'p-4 bg-white/5 rounded-xl border border-transparent hover:border-blue-600 group trasition-colors duration-200'
@endphp

<div {{ $attributes(['class' => $classes]) }}>
    {{ $slot }}
</div>