@extends("layouts.dashboard")


@section('dashboard_title')
Settings
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

<section id="content">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Setup {{session('project_name')}}
                    <small>Please tell us the following info to setup {{session('project_name')}} for you.
                    </small>
                </h2>
            </div>

            <div class="card-body card-padding">
                <form role="form" action="{{ url('setup') }}" method="post">
                    {{ csrf_field() }}
                        <div class="form-group fg-line">
                            <select class="chosen" name="country" id="country" data-placeholder="Choose a Country...">
                               
                                @if(Auth::user()->country != null)
                                    <option>{{Auth::user()->country}}</option>
                                @endif
                                <option value="">-- Select Country --</option>
                                <option value="Nigeria">Nigeria</option>
                                <option value="United Kingdom">United Kingdom</option>
                                <option value="Afghanistan">Afghanistan</option>
                                <option value="Aland Islands">Aland Islands</option>
                                <option value="Albania">Albania</option>
                                <option value="Algeria">Algeria</option>
                                <option value="American Samoa">American Samoa</option>
                            </select>
                        </div>
                    
                        <div class="form-group fg-line">
                            <select class="form-control" id="school" name="school_name" onchange="load_course_faculties();" data-placeholder="Choose a School...">
                                
                                @if(Auth::user()->school_name != null)
                                    <option>{{Auth::user()->school_name}}</option>
                                @endif
                                @if(Auth::user()->school_name == null)
                                    <option value="">-- Select School --</option>
                                @endif
                                @foreach($schools as $school)
                                    <option>{{$school->school_name}}</option>
                                @endforeach
                            </select>
                           
                        </div>
                        
                    <div class="form-group fg-line">
                        <select class="form-control" id="faculty" name="faculty_name" onchange="load_course_depts();" data-placeholder="Choose a Faculty...">
                            @if(Auth::user()->faculty_name != null)
                                <option>{{Auth::user()->faculty_name}}</option>
                            @endif
                            @if(Auth::user()->faculty_name == null)
                                <option value="">-- Select Faculty --</option>
                            @endif
                            @isset($faculties)
                                @foreach($faculties as $key=>$faculty)
                                    <option>{{$faculty->faculty_name}}</option>
                                @endforeach
                            @endisset
                        </select>
                       
                    </div>
                    <div class="form-group fg-line">
                        <select class="form-control" id="dept" name="department_name"  data-placeholder="Choose a Department...">
                            @if(Auth::user()->department_name != null)
                                <option>{{Auth::user()->department_name}}</option>
                            @endif
                            @if(Auth::user()->department_name == null)
                                <option value="">-- Select Department --</option>
                            @endif
                        </select>
                       
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm m-t-10">Save</button>
                </form>
            </div>
            <div class="card-footer" align="center">
                <div class="row">
                    <div class="col-md-12">
                        Couldn't find your your Faculty or Department?. Tell us on 
                        <a class="btn btn-w-2 bg-green" href="https://api.whatsapp.com/send?phone=2349067992799&text=Hello%20i'm%20from%20mygpa.app" target="_blank">
                            <img class="w-img-2" src="{{ url('/images/ic_whatsapp.svg')}}">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('dashboard_scripts')
    
@endsection