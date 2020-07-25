@extends("layouts.login")


@section('login_title')
    @if(isset($register)) 
        Sign Up
    @else
        Login
    @endif

@endsection

@section('login_styles')

@endsection
@section('login_content')

    {{-- @isset($refering_user)
        @php
            dd($refering_user);
        @endphp
    @endisset --}}

    <!-- Login -->
    <div class="lc-block @if(!isset($register)) toggled @endif" id="l-login">
        <div class="lcb-form">
        <form action="" id="login-form" >
                {{ csrf_field() }}

                @isset($refering_user)
                    <input type="hidden" name="refering_user" value="{{$refering_user}}">
                @endisset

                @isset($school)
                    <input type="hidden" id="school" name="school"  value="{{ $school[0]['school_name'] }}"/>
               
                    <div class="input-group m-b-10 mr-auto">
                        
                        <img class="schoo_logo" src="{{ url('school_logos/'.$school[0]['school_logo'])}}"/>
                    </div>
                    <div class="input-group m-b-10 mr-auto f-700">
                        {{$school[0]['school_name']}} 
                    </div>
                @endisset
                <div class="input-group m-b-20 mr-auto">
                    {{session('project_name')}} Beta Program
                </div>
                <div class="col-md-12 m-b-10">
                    <strong>Login</strong>
                </div>
                {{-- <div class="col-md-12">
                    <div id="loginbutton" class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
                </div> --}}
                <div class="input-group m-b-20 mr-auto" id="login-reponse">
                        
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                    <div class="fg-line">
                        <input type="email" class="form-control " id="login-email" name="email" placeholder="Email Address" required>
                    </div>
                </div>
    
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" id="login-password" name="password" placeholder="Password"  required>
                    </div>
                </div>
    
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="" id="checkbox">
                        <i class="input-helper"></i>
                        Keep me signed in
                    </label>
                </div>
                
                <input type="hidden" name="checked" id="checked" vale=""/>
                <button type="button" class="btn btn-login btn-success btn-float" onclick="login()" id="login_btn"><i class="zmdi zmdi-arrow-forward"></i></button>
            </form>
        </div>

        <div class="lcb-navigation">
            <a href="" data-ma-action="login-switch" data-ma-block="#l-register"><i class="zmdi zmdi-plus"></i> <span>Register</span></a>
            <a href="" data-ma-action="login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
        </div>
    </div>

    <!-- Register -->
    <div class="lc-block @if(isset($register)) {{$register}} @endif" id="l-register">
        <div class="lcb-form">
            <form  id="signup-form1" action="">
                {{ csrf_field() }}

                @isset($refering_user)
                    <input type="hidden" name="refering_user" value="{{$refering_user}}">
                @endisset


                @isset($school)
                    <input type="hidden" id="r_school" name="school"  value="{{ $school[0]['school_name'] }}"/>
                
                    <div class="input-group m-b-10 mr-auto">
                        
                        <img class="schoo_logo" src="{{ url('school_logos/'.$school[0]['school_logo'])}}"/>
                    </div>
                    <div class="input-group m-b-10 mr-auto f-700">
                        {{$school[0]['school_name']}} 
                    </div>
                @endisset
                <div class="input-group m-b-20 mr-auto">
                        {{session('project_name')}} Beta Program
                </div>
                <div class="col-md-12 m-b-10">
                    <strong>Sign Up</strong>
                </div>
                {{-- <div class="col-md-12">
                    <div id="signupbutton" class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
                </div> --}}
                <div class="input-group m-b-20 mr-auto" id="signup-reponse">
                   
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control"  name="firstname" id="firstname"  placeholder="Firstname" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Lastname" required>
                    </div>
                </div>
    
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" name="email" id="email" placeholder="Email Address" required>
                    </div>
                </div>
    
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                    </div>
                </div>

                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" name="password2" id="password2" placeholder="Confirm Password" required>
                    </div>
                </div>
    
                <button type="button" class="btn btn-login btn-success btn-float" onclick="signup()" id="signup_btn"><i class="zmdi zmdi-check"></i></b>
            </form>
        </div>

        <div class="lcb-navigation">
            <a href="" data-ma-action="login-switch" data-ma-block="#l-login"><i class="zmdi zmdi-long-arrow-right"></i> <span>Sign in</span></a>
            <a href="" data-ma-action="login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
        </div>
    </div>

    <!-- Forgot Password -->
    <div class="lc-block" id="l-forget-password">
        
        <div class="lcb-form">
            <form action="" id="forgot-form">
                    {{ csrf_field() }}

                @isset($refering_user)
                    <input type="hidden" name="refering_user" value="{{$refering_user}}">
                @endisset


                <div class="input-group m-b-20 mr-auto">
                    <img class="schoo_logo" src="{{ url('school_logos/'.$school[0]['school_logo'])}}"/>
                </div>
                <div class="input-group m-b-20 mr-auto">
                    {{$school[0]['school_name']}} 
                </div>
                <div class="input-group m-b-20 mr-auto">
                    {{session('project_name')}} Beta Program
                </div>
                <div class="col-md-12 m-b-10">
                    <strong>Forgot Password</strong>
                </div>
                <div class="input-group m-b-20 mr-auto" id="forgot-reponse">
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                    <div class="fg-line">
                        <input type="text" id="password_email" name="password_email" class="form-control" placeholder="Email Address">
                    </div>
                </div>

                <button type="button" onclick="forgotPassword()" class="btn btn-login btn-success btn-float" id="forgot_btn"><i class="zmdi zmdi-check"></i></button>
            </form>
        </div>

        <div class="lcb-navigation">
            <a href="" data-ma-action="login-switch" data-ma-block="#l-login"><i class="zmdi zmdi-long-arrow-right"></i> <span>Sign in</span></a>
            <a href="" data-ma-action="login-switch" data-ma-block="#l-register"><i class="zmdi zmdi-plus"></i> <span>Register</span></a>
        </div>
    </div>
@endsection

@section('login_scripts')
 
@endsection
