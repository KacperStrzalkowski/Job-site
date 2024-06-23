<x-layout>
    <div class='space-y-10'>
        <section class='text-center pt-6'>
            <h1 class='font-bold text-4xl'>Let's Find Your Next Job</h1>

            <x-search />
        </section>


        <section class='pt-10'>
            <x-section-header>
                Top Jobs
            </x-section-header>
            
        <div class='mt-6 grid lg:grid-cols-3 gap-8'>
            @foreach($featuredJobs as $job)
                <x-job-card :$job />
            @endforeach
        </div>
        </section>

        <section>

            <x-section-header>
                Tags
            </x-section-header>

            <div class='mt-6 space-x-1'>
                @foreach($tags as $tag)
                    <x-tag :$tag size='base' />
                @endforeach
            </div>

        </section>

        <section>
            <x-section-header>
                Recent Jobs
            </x-section-header>

            <div class='mt-6 space-y-6'>
            @foreach($jobs as $job)
                <x-job-card-wide :$job />
            @endforeach
            </div>

        </section>
    </div>
</x-layout>