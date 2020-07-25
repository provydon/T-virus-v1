<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta name="google-signin-client_id" content="101425260364-hkduugk0mid282338664o0i33hbh4b3b.apps.googleusercontent.com">
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="apple-touch-icon" sizes="180x180" href="images/favicon.png">
        <link rel="icon" type="image/png" href="images/favicon.png" sizes="32x32">
        <link rel="icon" type="image/png" href="images/favicon.png" sizes="16x16">
        <link rel="manifest" href="images/favicon.png">
        <link rel="mask-icon" href="images/favicon.png" color="#5bbad5">
        <title>
            @yield('login_title') | {{session('project_name')}} Program
        </title>
        
        <!-- Vendor CSS -->
        <link href="{{ url('vendors/bower_components/animate.css/animate.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css')}}" rel="stylesheet">
        
        <!-- CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="{{ url('css/app_1.min.css')}}" rel="stylesheet">
        <link href="{{ url('css/app_2.min.css')}}" rel="stylesheet">
        <link href="{{ url('css/Mystyle.css')}}" rel="stylesheet">
            @yield('login_styles')
    </head>
    <body>
      
        <div class="login-content">
            @yield('login_content')
        </div>
        <!-- Javascript Libraries -->
        <script src="{{ url('vendors/bower_components/jquery/dist/jquery.min.js') }}"></script>
        <script src="{{ url('vendors/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>

        <script src="{{ url('vendors/bower_components/Waves/dist/waves.min.js')}}"></script>
        <script src="{{ url('js/app.min.js')}}"></script>

        
        
        <script>
            
            function signup(){

                
                var firstname = $('#firstname').val(); // get the value of the input field
                if (firstname == "" || firstname == " ") {
                    $('#signup-reponse').html("Please enter your Firstname <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                   
                    return;
                }

                var lastname = $('#lastname').val(); // get the value of the input field
                if (lastname == "" || lastname == " ") {
                    $('#signup-reponse').html("Please enter your Lastname <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                   
                    return;
                }

                var emailCompare = /^([a-z0-9_.-]+)@([da-z.-]+).([a-z.]{2,6})$/; // Syntax to compare against input
                var email = $('#email').val().trim().toLowerCase(); // get the value of the input field
                if (email == "" || !emailCompare.test(email)) {
                    $('#signup-reponse').html("Please provide a working email address <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
    
                    return;
                }

                var password = $('#password').val();
                var password2 = $('#password2').val(); // get the value of the input field
                if (password != password2) {
                    $('#signup-reponse').html("Passwords do not match <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                   
                    return;
                }
                if(password.length < 6){
                    $('#signup-reponse').html("Password is too short, should be at least 6 characters <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                    return;
                }


                var formData1 = $('#signup-form1').serialize();
                var url = "{{ route('signup') }}";
                $('#signup-reponse').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: formData1, _token: "{{ Session::token() }}" ,
                    success: function(response) {
                        if(response == "Registration Successfull"){
                            $('#signup-reponse').html(response+" <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
                            window.location.href = "{{ route('calculator') }}";
                        }
                        else{
                            $('#signup-reponse').html(response+" <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                        }
                    },
                    error: function(){
                        // $('#save-result').html("couldnt Save result");
                            // $("#save-result").toggleClass("btn btn-talk");
                    }
                });
                console.log("signup-form");
            }
            function login(){

                if ($('#checkbox').is(':checked')) {
                    $('#checked').val("true");
                } else {
                    $('#checked').val("false");
                }

                var emailCompare = /^([a-z0-9_.-]+)@([da-z.-]+).([a-z.]{2,6})$/; // Syntax to compare against input
                var email = $('#login-email').val().trim().toLowerCase(); // get the value of the input field
                if (email == "" || !emailCompare.test(email)) {
                    $('#login-reponse').html("Please provide a working email address <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
    
                    return;
                }

                var lastname = $('#login-password').val(); // get the value of the input field
                if (lastname == "" || lastname == " ") {
                    $('#login-reponse').html("Please enter your Lastname <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                   
                    return;
                }

                var formData1 = $('#login-form').serialize();
                var url = "{{ route('login') }}";
                $('#login-reponse').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: formData1, _token: "{{ Session::token() }}" ,
                    success: function(response) {
                        if(response == "Login successful"){
                            $('#login-reponse').html(response+" <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
                            window.location.href = "{{ route('calculator') }}";
                        }
                        else{
                            $('#login-reponse').html(response+" <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                        }
                    },
                    error: function(){
                        // $('#save-result').html("couldnt Save result");
                            // $("#save-result").toggleClass("btn btn-talk");
                    }
                });
                console.log("login-form");
            }
            function forgotPassword(){
                var emailCompare = /^([a-z0-9_.-]+)@([da-z.-]+).([a-z.]{2,6})$/; // Syntax to compare against input
                var email = $('#password_email').val().trim().toLowerCase(); // get the value of the input field
                if (email == "" || !emailCompare.test(email)) {
                    $('#forgot-reponse').html("Please provide a working email address <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                    return;
                }

                var formData1 = $('#forgot-form').serialize();
                var url = "{{ route('forgot_password') }}";
                $('#forgot-reponse').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: formData1, _token: "{{ Session::token() }}" ,
                    success: function(response) {
                        if(response == "Password Sent To Your E-mail"){
                            $('#forgot-reponse').html(response+" <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
                        }
                        else{
                            $('#forgot-reponse').html(response+" <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                        }
                    },
                    error: function(){
                        // $('#save-result').html("couldnt Save result");
                            // $("#save-result").toggleClass("btn btn-talk");
                    }
                });
                console.log("forgot-form");
            }
            function changePassword(){

                var password = $('#password').val();
                var password2 = $('#password2').val(); // get the value of the input field
                if (password != password2) {

                    $('#signup-reponse').html("Passwords do not match <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                    return;
                }
                if(password.length < 6){
                    $('#signup-reponse').html("Password is too short, should be at least 6 characters <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                    return;
                }

                var formData1 = $('#signup-form1').serialize();
                var url = "{{ route('change_password') }}";
                $('#signup-reponse').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: formData1, _token: "{{ Session::token() }}" ,
                    success: function(response) {
                        if(response == "Password Changed"){
                            $('#signup-reponse').html(response+" <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
                            window.location.href = "{{ route('calculator') }}";
                        }
                        else{
                            $('#signup-reponse').html(response+" <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>");
                        }
                    },
                    error: function(){
                        // $('#save-result').html("couldnt Save result");
                            // $("#save-result").toggleClass("btn btn-talk");
                    }
                });
                console.log("Change Password");

            }
            
        </script>

        <script>
            window.fbAsyncInit = function() {
                // FB JavaScript SDK configuration and setup
                FB.init({
                appId      : 1362274577206165, // FB App ID
                cookie     : true,  // enable cookies to allow the server to access the session
                xfbml      : true,  // parse social plugins on this page
                version    : 'v2.8' // use graph api version 2.8
                });
                
                // Check whether the user already logged in
                FB.getLoginStatus(function(response) {
                    if (response.status === 'connected') {
                        //display user data
                        getFbUserData();
                    }
                });
            };
            
            // Load the JavaScript SDK asynchronously
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
            
            // Facebook login with JavaScript SDK
            function fbLogin() {
                FB.login(function (response) {
                    if (response.authResponse) {
                        // Get and display the user profile data
                        getFbUserData();
                    } else {
                        document.getElementById('status').innerHTML = 'User cancelled login or did not fully authorize.';
                    }
                }, {scope: 'email'});
            }
            
            // Fetch the user profile data from facebook
            function getFbUserData(){
                FB.api('/me', {locale: 'en_US', fields: 'id,first_name,last_name,email,link,gender,locale,picture'},
                function (response) {
                    
                });
            }
            
            // Logout from facebook
            function fbLogout() {
                FB.logout(function() {
                   
                });
            }


            // Login Or Signup on enter

            // login
            var loginEnter = document.getElementById("login-password");
            loginEnter.addEventListener("keyup", function(event) {
                event.preventDefault();
                if (event.keyCode === 13) {
                    // $("#login_btn").click();
                    document.getElementById("login_btn").click();
                }
            });

            var signupEnter = document.getElementById("password2");
            signupEnter.addEventListener("keyup", function(event) {
                event.preventDefault();
                if (event.keyCode === 13) {
                    // $("#login_btn").click();
                    document.getElementById("signup_btn").click();
                }
            });

            var forgotEnter = document.getElementById("password_email");
            forgotEnter.addEventListener("keyup", function(event) {
                event.preventDefault();
                if (event.keyCode === 13) {
                    // $("#login_btn").click();
                    document.getElementById("forgot_btn").click();
                }
            });

              
        </script>

        @if(Session::has('success'))
            <script>
                swal("{{ session::get('success') }}","", "success");
            </script>
        @endif
        @if(Session::has('fail'))
            <script>
                swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "{{ session::get('fail') }}");
            </script>
        @endif
        
        
            @yield('login_scripts')
    </body>
</html>
