@props(['job'])

<x-panel class='flex gap-x-6'>

    <div>
        <x-employer-logo :employer="$job->employer" />
    </div>

    <div class='flex-1 flex flex-col'>
            <a href="#" class='self-start text-sm text-gray-400'>{{ $job->employer->name }}</a>
            <h3 class='font-bold text-xl mt-3 group-hover:text-blue-600 trasition-colors duration-200'>
                <a href="{{ $job->url }}"  target="_blank">
                    {{ $job->title }}
                </a>
            </h3>
            <p class='text-sm text-gray-400 mt-auto'>{{ $job->salary }}</p>
    </div>

    <div class='flex flex-col'>
            <div class='self-end flex gap-x-1'>
            </div>

            <div class='mt-auto flex gap-x-1'>
                @foreach($job->tags as $tag)
                    <x-tag :$tag size='base' />
                @endforeach
            </div>
    </div>

</x-panel>