<x-layout>
    <section class="text-center">
        <x-page-header>Results</x-page-header>
        <x-search />
    </section>
    <section class='mt-12'>
        <div class='space-y-6'>
        @foreach($jobs as $job)
             <x-job-card-wide :$job />
         @endforeach
        </div>
    </section>
</x-layout>