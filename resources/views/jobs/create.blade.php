<x-layout>
    <x-page-header>
        Post a Job
    </x-page-header>
    <x-forms.form method="POST" action="/jobs">
        @csrf
        <x-forms.input name="title" label="Title" placeholder="CEO" />
        <x-forms.input name="salary" label="Salary" placeholder="$90,000 per year" />
        <x-forms.input name="location" label="Location" placeholder="Chodzież, Wielkopolska" />
        // select
        <x-forms.select name="schedule" label="Schedule">
            <option>Part Time</option>
            <option>Full Time</option>
        </x-forms.select>

        <x-forms.input name="url" label="Your site's url" />

        <x-forms.divider />

        <x-forms.input name="tags" label="Tags (comma separated)" placeholder="frontend, it, manager"/>

        <x-forms.checkbox name="featured" label="Feature (Costs Extra)" />

        <x-forms.button class="flex self-end" type="Submit">Post</x-forms.button>
    </x-forms.form>
</x-layout>