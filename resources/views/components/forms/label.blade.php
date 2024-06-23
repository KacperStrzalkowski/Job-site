@props(['name', 'label'])

<div class="inline-flex items-center gap-x-2">
    <span class="inline-block w-2 h-2 bg-white"></span>
    <label class="font-bold" for="{{ $name }}">{{ $label }}</label>
</div>