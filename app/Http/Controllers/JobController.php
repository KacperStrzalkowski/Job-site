<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\Tag;
use App\Models\Employer;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StorejobRequest;
use App\Http\Requests\UpdatejobRequest;
use PHPUnit\Framework\Constraint\IsFalse;

class JobController extends Controller
{
    public function index()
    {
        $jobs = Job::latest()->with(['employer', 'tags'])->get()->groupBy('featured');

        return view('jobs.index', [
            'featuredJobs' => $jobs[1],
            'jobs' => $jobs[0],
            'tags' => Tag::get()
        ]);
    }
    public function create()
    {
        return view('jobs.create');
    }
    public function store(Request $request)
    {
        $attr = $request->validate([
            "title" => ["required", "min:3"],
            "salary" => ["required", "min:3"],
            "location" => ["required", "min:3"],
            "schedule" => ["required", Rule::in(['Full Time', 'Part Time'])],
            "url" => ["required", "min:3", "active_url"],
            'tags' => ['nullable']
        ]);

        $attr['featured'] = $request->has('featured');

        $job = Auth::user()->employer->jobs()->create(Arr::except($attr, 'tags'));

        if($attr['tags'] ?? false){
            foreach (explode(',', $attr['tags']) as $tag){
                $job->tag($tag);
            }
        }

        return redirect('/');
    }
}