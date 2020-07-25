@extends("layouts.dashboard")

@php
$i = 1;
$about = "active";
@endphp

@section('dashboard_title')
About
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

    <section id="content">
        <div class="container">
            <div class="block-header">
               
            </div>
            <div class="row">
                <div class="col-md-12 page_name" align="center">
                About  <i class="zmdi zmdi-alert-circle-o"></i>
                </div>
                <div class="col-md-12">
                    <div class="card" style="font-size:15px;">
                        <div class="card-header" align="center">
                            
                        </div>

                        <div class="card-body card-padding">
                            
                            <p>
                                Imagine if you could accurately predict if you can still graduate with your Dream/Target CGPA or not.
                            </p>
                            <p>
                                So that you would accurately know if there's still hope or not.
                            </p>
                            <p>
                                And if the App says you can...
                            </p>
                            <p>
                                Then imagine If you could also know exactly what minimum grades to get in each course remaining for you in your degree that's just exactly enough for you to graduate with that your Dream/Target CGPA.
                            </p>

                            <p>
                                With all these and more, you can effectively prioritize on what's important and what's not important to achieve all your school/life goals,  (academic and nonacademic). 
                            </p>
                            
                            <h3>
                                Features!!!
                            </h3>
                            <ul>
                                <li>
                                    All  the courses and their credit units for your department are already there.
                                </li>
                                <li>
                                    All you have to do is input your results and you can calculate your CGPA.
                                </li>
                                <li>
                                    After calculating, you can save your Results online.
                                </li>
                                <li>
                                    You can also set your Target CGPA , (that's what you want to leave with at the end of final year).
                                </li>
                                <li>
                                    The Target function can literally and accurately based on your current results so far...let you know if you can still graduate with your target CGPA or not.
                                </li>
                                <li>
                                    If you can, the function lets you know the exact minimum grades you need to get in each course you have left from now till you graduate that is just exactly enough for you to graduate with that Target CGPA. 
                                </li>
                                <li>
                                    You can save your targets online for later referencing/planing.
                                </li>
                            </ul>
                                
                            <h4>
                                Simply subscribe <a href="{{ url('dashboard/subscriptions') }}">here</a> and start using the app.
                            </h4>
                            <p>
                                Spread the word to other students in your school and departments with your referral link below and earn money.
                            </p>  
                            <p>
                                <input type="text" value="{{ url('/ref/'.Auth::user()->id) }}" id="myInput" class="form-control input-sm" placeholder="Input Small" readonly>
                                <div class="tooltips">
                                    <button onclick="myFunction()" onmouseout="outFunc()" class="btn btn-primary btn-sm m-t-10">
                                        <span class="tooltiptext" id="myTooltip">Copy to clipboard</span>
                                        Copy text
                                    </button>
                                </div>
                            </p>                                
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    </section>
@endsection

@section('dashboard_scripts')
    
@endsection