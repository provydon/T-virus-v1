@extends("layouts.login")


@section('login_title')
<<<<<<< HEAD
{{$user['first_name']}} {{$user['last_name']}} T-virus Password Reset
@endsection
=======
Login
@endsection
{{-- @php
    dd($school[0]['school_logo']);
@endphp --}}

>>>>>>> 63a05dfff1ad5bbd6fddebd6636c02748b1b34e8

@section('login_styles')

@endsection
@section('login_content')

<<<<<<< HEAD
   
    <!-- Register -->
    <div class="lc-block toggled" id="l-login">
        <div class="lcb-form">
            <form  id="signup-form1" action="">
                {{ csrf_field() }}
                @isset($school)
                    <input type="hidden" id="r_school" name="school"  value="{{ $school[0]['school_name'] }}"/>
                
=======
    <!-- Login -->
    <div class="lc-block toggled" id="l-login">
        <div class="lcb-form">
        <form action="" id="login-form" >
                {{ csrf_field() }}
                @isset($school)
                    <input type="hidden" id="school" name="school"  value="{{ $school[0]['school_name'] }}"/>
               
>>>>>>> 63a05dfff1ad5bbd6fddebd6636c02748b1b34e8
                    <div class="input-group m-b-10 mr-auto">
                        
                        <img class="schoo_logo" src="{{ url('school_logos/'.$school[0]['school_logo'])}}"/>
                    </div>
                    <div class="input-group m-b-10 mr-auto f-700">
                        {{$school[0]['school_name']}} 
                    </div>
                @endisset
                <div class="input-group m-b-20 mr-auto">
<<<<<<< HEAD
                        T-virus Beta Program
                </div>
                <div class="col-md-12 m-b-10">
                    <strong> Dear {{$user['first_name']}} {{$user['last_name']}},<br> please reset your Password bellow</strong>
                </div>
                {{-- <div class="col-md-12">
                    <div id="signupbutton" class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
                </div> --}}
                <div class="input-group m-b-20 mr-auto" id="signup-reponse">
                   
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" name="password" id="password" placeholder="New Password" required>
                    </div>
                </div>

                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" name="password2" id="password2" placeholder="Confirm New Password" required>
                    </div>
                </div>
                <input type="hidden" class="form-control" name="user_id" value="{{$user['id']}}" placeholder="Confirm New Password" required>

                <button type="button" class="btn btn-login btn-success btn-float" onclick="changePassword()"><i class="zmdi zmdi-check"></i></b>
            </form>
        </div>
    </div>

=======
                    T-virus Beta Program
                </div>
                <div class="col-md-12 m-b-10">
                    <strong>Password Reset</strong>
                </div>
                <div class="input-group m-b-20 mr-auto" id="login-reponse">
                        
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter New Password" required>
                    </div>
                </div>
    
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm New Password" required>
                    </div>
                </div>
                
                <button type="button" class="btn btn-login btn-success btn-float" onclick="login()"><i class="zmdi zmdi-arrow-forward"></i></button>
            </form>
        </div>
    </div>
>>>>>>> 63a05dfff1ad5bbd6fddebd6636c02748b1b34e8
@endsection

@section('login_scripts')
 
@endsection
