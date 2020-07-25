<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="shortcut icon" href="../images/favicon.png" type="image/x-icon">
        <link rel="apple-touch-icon" sizes="180x180" href="../images/favicon.png">
        <link rel="icon" type="image/png" href="../images/favicon.png" sizes="32x32">
        <link rel="icon" type="image/png" href="../images/favicon.png" sizes="16x16">
        <link rel="manifest" href="../images/favicon.png">
        <link rel="mask-icon" href="../images/favicon.png" color="#5bbad5">
        <title>
            @yield('dashboard_title') | {{session('project_name')}} Program
        </title>
    
        
        <link href="{{ url('vendors/bower_components/animate.css/animate.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/sweetalert2/dist/sweetalert2.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css')}}" rel="stylesheet">        
        <link href="{{ url('vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/nouislider/distribute/nouislider.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/dropzone/dist/min/dropzone.min.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/farbtastic/farbtastic.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/bower_components/chosen/chosen.css')}}" rel="stylesheet">
        <link href="{{ url('vendors/summernote/dist/summernote.css')}}" rel="stylesheet">    


        <!-- CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="{{ url('css/app_1.min.css')}}" rel="stylesheet">
        <link href="{{ url('css/app_2.min.css')}}" rel="stylesheet">
        <link href="{{ url('css/Mystyle.css')}}" rel="stylesheet">
    
        <!-- Following CSS are used only for the Demp purposes thus you can remove this anytime. -->
        <link href="{{ url('css/demo.css')}}" rel="stylesheet">
         @if(isset($target_msg))
            <style>
            #target-card{
                display:none;
            }
            </style>
        @endif
        @if(isset($target_msg2) or Session::has('fail'))
            <style>
            #target-card{
                display:none;
            }
            </style>
        @endif
            @yield('dashboard_styles')
        </head>
        <body>
            
            <header id="header" class="clearfix" data-ma-theme="blue">
                <ul class="h-inner">
                    <li class="hi-trigger ma-trigger" data-ma-action="sidebar-open" data-ma-target="#sidebar">
                        <div class="line-wrap">
                            <div class="line top"></div>
                            <div class="line center"></div>
                            <div class="line bottom"></div>
                        </div>
                    </li>
                    <li class="hi-logo">
                        <a href="index.html">{{session('project_name')}}</a>
                    </li>
                    <li class="pull-right">
                        <ul class="hi-menu">
    
                          <!--   <li data-ma-action="search-open">
                                <a href=""><i class="him-icon zmdi zmdi-search"></i></a>
                            </li> -->
    
                            <li class="dropdown">
                                <a data-toggle="dropdown" href="" >
                                    <i class="him-icon zmdi zmdi-notifications" onclick="clearNotifications()"></i>
                                    @if (session('notifications') != null)
                                        @if (count(session('notifications')) > 0)
                                            <i class="him-counts">
                                                {{ count(session('notifications'))}}
                                            </i>
                                        @endif
                                    @endif
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg pull-right">
                                    <div class="list-group him-notification">
                                        <div class="lg-header">
                                            Notification
    
                                            <ul class="actions">
                                                <li class="dropdown">
                                                    <a href="" data-ma-action="clear-notification">
                                                        <i class="zmdi zmdi-check-all"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="lg-body">
                                            @if (session('notifications') != null)
                                                @foreach (session('notifications') as $notification)
                                                    @if($notification->msg == "You're Subscribed!!!")
                                                        <a class="list-group-item media" href="{{url("/dashboard/subscriptions")}}">
                                                            {{-- <div class="pull-left">
                                                                <img class="lgi-img" src="../images/bitch.jpg" alt="">
                                                            </div> --}}
                                                            <div class="media-body">
                                                                <div class="lgi-heading">{{$notification->msg}}</div>
                                                                <small class="lgi-text">on {{ Carbon\Carbon::parse($notification->created_at)->format('l j F Y') }}</small>
                                                            </div>
                                                        </a>
                                                    @else
                                                        <a class="list-group-item media" href="{{url("/dashboard/referral")}}">
                                                            {{-- <div class="pull-left">
                                                                <img class="lgi-img" src="../images/bitch.jpg" alt="">
                                                            </div> --}}
                                                            <div class="media-body">
                                                                <div class="lgi-heading">{{$notification->msg}}</div>
                                                                <small class="lgi-text">on {{ Carbon\Carbon::parse($notification->created_at)->format('l j F Y') }}</small>
                                                            </div>
                                                        </a>
                                                    @endif
                                                    
                                                @endforeach
                                            @endif
                                        </div>
    
                                        <a class="view-more" href="">View Previous</a>
                                    </div>
                                </div>
                            </li>
                            <li class="dropdown">
                                <a data-toggle="dropdown" href=""><i class="him-icon zmdi zmdi-more-vert"></i></a>
                                <ul class="dropdown-menu dm-icon pull-right">
                                    {{--  <li class="skin-switch hidden-xs">
                                        <span class="ss-skin bgm-lightblue" data-ma-action="change-skin" data-ma-skin="lightblue"></span>
                                        <span class="ss-skin bgm-bluegray" data-ma-action="change-skin" data-ma-skin="bluegray"></span>
                                        <span class="ss-skin bgm-cyan" data-ma-action="change-skin" data-ma-skin="cyan"></span>
                                        <span class="ss-skin bgm-teal" data-ma-action="change-skin" data-ma-skin="teal"></span>
                                        <span class="ss-skin bgm-orange" data-ma-action="change-skin" data-ma-skin="orange"></span>
                                        <span class="ss-skin bgm-blue" data-ma-action="change-skin" data-sma-kin="blue"></span>
                                    </li>  --}}
                                    <li class="divider hidden-xs"></li>
                                    {{--  <li>
                                        <a href=""><i class="zmdi zmdi-graduation-cap"></i> Featured Schools</a>
                                    </li>
                                    <li>
                                        <a href=""><i class="zmdi zmdi-balance"></i> Featured Departments</a>
                                    </li>  --}}
                                    <li class="hidden-xs">
                                        <a data-ma-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>
                                    </li>
                                    <li>
                                    <a href="{{ route('settings') }}"><i class="zmdi zmdi-settings"></i> Settings</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: one;">
                    {{ csrf_field() }}
                </form>
                    
                <!-- Top Search Content -->
               <!--  <div class="h-search-wrap">
                    <div class="hsw-inner">
                        <i class="hsw-close zmdi zmdi-arrow-left" data-ma-action="search-close"></i>
                        <input type="text">
                    </div>
                </div> -->
            </header>
            <a class="btn btn-w bg-green" href="https://api.whatsapp.com/send?phone=2348162823424&text=Hello%20i'm%20from%20mygpa.app" target="_blank">
                <img class="w-img" src="{{ url('/images/ic_whatsapp.svg')}}">
            </a>
            <section id="main">
                <aside id="sidebar" class="sidebar c-overflow">
                    <div class="s-profile">
                        <a href="" data-ma-action="profile-menu-toggle">
                            <div class="sp-pic">
                                    @php  
                                        $image = "images/".Auth::user()->photo;
                                    @endphp
                                <img src="{{ url($image)}}" alt="">
                            </div>
    
                            <div class="sp-info">
                                {{Auth::user()->first_name}}  {{Auth::user()->last_name}}
    
                                <i class="zmdi zmdi-caret-down"></i>
                            </div>
                        </a>
    
                        <ul class="main-menu">
                            <li>
                                <a href="{{ route('settings') }}"><i class="zmdi zmdi-settings"></i> Settings</a>
                            </li>
                            <li>
                                <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                            </li>
                        </ul>
                    </div>
    
                    <ul class="main-menu">
                        <li class="@isset($about){{$about}} @endisset">
                            <a href="{{ route('about') }}"><i class="zmdi zmdi-alert-circle-o"></i>About</a>
                        </li>
                        <li class="@isset($calculator){{$calculator}} @endisset menu">
                            <a href="{{ route('calculator') }}"><i class="zmdi zmdi-apps"></i>Calculate CGPA</a>
                        </li>
                        {{-- <li>
                            <a href="{{ route('test') }}"><i class="zmdi zmdi-apps"></i>Test Calculator</a>
                        </li> --}}
                        <li class="@isset($target_page){{$target_page}} @endisset menu2">
                            <a href="{{ route('target_cgpa') }}"><i class="zmdi zmdi-trending-up"></i> Target CGPA</a>
                        </li>
                         <li class="@isset($saved_target){{$saved_target}} @endisset">
                            <a href="{{ route('saved_targets') }}"><i class="zmdi zmdi-my-location"></i> Saved Targets</a>
                        </li>
                        <li class="@isset($results){{$results}} @endisset">
                            <a href="{{ route('results') }}"><i class="zmdi zmdi-square-down"></i> Results</a>
                        </li>
                        <li class="@isset($subscriptions){{$subscriptions}} @endisset">
                            <a href="{{ route('subscriptions') }}"><i class="zmdi zmdi-money"></i> Subscription</a>
                        </li>
                        <li class="@isset($referals){{$referals}} @endisset">
                            <a href="{{ route('referral') }}"><i class="zmdi zmdi-balance-wallet"></i> Referrals</a>
                        </li>
                        {{-- <li>
                            <a href="#"><i class="zmdi zmdi-arrow-right-top"></i> Highest CGPA/GPA I can graduate with</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-arrow-left-bottom"></i> Lowest CGPA/GPA I can graduate with</a>
                        </li> --}}
                        {{--  <li>
                            <a href=""><i class="zmdi zmdi-accounts"></i> Meet Foreign Students</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-accounts"></i> Meet Graduated Students</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-cloud-done"></i>StackOverflow</a>
                        </li>  --}}
                        {{-- <li class="sub-menu">
                            <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-local-pharmacy"></i> Request</a>
    
                            <ul>
                                <li><a href="dashboards/analytics.html"><i class="zmdi zmdi-graduation-cap"></i>&nbsp; Add My School</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-balance"></i>&nbsp; Add My faculty</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-balance"></i>&nbsp; Add My Department</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-ticket-star"></i>&nbsp;  Add a Course</a></li>
                            </ul>
                        </li> --}}
                        {{-- <li class="sub-menu">
                            <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-help"></i> How To</a>
    
                            <ul>
                                <li><a href="dashboards/analytics.html"><i class="zmdi zmdi-apps"></i>&nbsp; Use {{session('project_name')}}</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-trending-up"></i>&nbsp; Target</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-square-down"></i>&nbsp; Save Result</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-local-printshop"></i>&nbsp; Print Result</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-graduation-cap"></i>&nbsp; Add your school</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-balance"></i>&nbsp; Add your faculty</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-balance"></i>&nbsp; Add your department</a></li>
                                <li><a href="dashboards/school.html"><i class="zmdi zmdi-ticket-star"></i>&nbsp; Add a Course</a></li>
                            </ul>
                        </li> --}}
                        @if(session('sub_admin') == "yes")
                            <li class="sub-menu @isset($subadmin){{$subadmin}} @endisset">
                                <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-accounts"></i> Sub Admin</a>
        
                                <ul>
                                    <li class="@isset($subadmin_courses){{$subadmin_courses}} @endisset"><a href="{{ route('sub-admin-courses') }}"><i class="zmdi zmdi-cloud"></i>&nbsp; Courses</a></li>
                                    <li class="@isset($subadmin_students){{$subadmin_students}} @endisset"><a href="{{ route('sub-admin-students') }}"><i class="zmdi zmdi-male-female"></i>&nbsp; Students</a></li>
                                    {{-- <li><a href="dashboards/school.html"><i class="zmdi zmdi-comment-more"></i>&nbsp; Support Messages</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-notifications-add"></i>&nbsp; Post</a></li> --}}
                                </ul>
                            </li>
                        @endif
                        @if(session('head_sub_admin') == "yes")
                            <li class="sub-menu @isset($headsubadmin){{$headsubadmin}} @endisset">
                                <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-account-box"></i> Head Sub Admin</a>
        
                                <ul>
                                    <li class="@isset($headsubadmin_courses){{$headsubadmin_courses}} @endisset"><a href="{{ route('head-sub-admin-courses') }}"><i class="zmdi zmdi-cloud"></i>&nbsp; Courses</a></li>
                                    <li class="@isset($headsubadmin_students){{$headsubadmin_students}} @endisset"><a href="{{ route('head-sub-admin-students') }}"><i class="zmdi zmdi-male-female"></i>&nbsp; Students</a></li>
                                    <li class="@isset($headsubadmin_subadmins){{$headsubadmin_subadmins}} @endisset"><a href="{{ route('head-sub-admin-sub_admins') }}"><i class="zmdi zmdi-accounts"></i>&nbsp; Sub Admins</a></li>
                                    <li class="@isset($headsubadmin_departments){{$headsubadmin_departments}} @endisset"><a href="{{ route('head-sub-admin-departments') }}"><i class="zmdi zmdi-balance"></i>&nbsp; Departments</a></li>
                                    <li class="@isset($headsubadmin_faculties){{$headsubadmin_faculties}} @endisset"><a href="{{ route('head-sub-admin-faculties') }}"><i class="zmdi zmdi-city-alt"></i>&nbsp; Faculties</a></li>
                                    {{-- <li><a href="dashboards/school.html"><i class="zmdi zmdi-graduation-cap"></i>&nbsp; School's Settings</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-comment-more"></i>&nbsp; Support Messages</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-notifications-add"></i>&nbsp; Post</a></li> --}}
                                </ul>
                            </li>
                        @endif
                        @if(session('admin') == "yes")
                            <li class="sub-menu @isset($admin){{$admin}} @endisset">
                                <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-account-circle"></i> Admin</a>
                                <ul>
                                    <li class="@isset($admin_courses){{$admin_courses}} @endisset"><a href="{{ route('admin-courses') }}"><i class="zmdi zmdi-cloud"></i>&nbsp; Courses</a></li>
                                    <li class="@isset($admin_students){{$admin_students}} @endisset"><a href="{{ route('admin-students') }}"><i class="zmdi zmdi-male-female"></i>&nbsp; Students</a></li>
                                    <li class="@isset($admin_departments){{$admin_departments}} @endisset"><a href="{{ route('admin-departments') }}"><i class="zmdi zmdi-balance"></i>&nbsp; Departments</a></li>
                                    <li class="@isset($admin_subadmins){{$admin_subadmins}} @endisset"><a href="{{ route('admin-sub_admin') }}"><i class="zmdi zmdi-accounts"></i>&nbsp; Sub Admins</a></li>
                                    <li class="@isset($admin_faculties){{$admin_faculties}} @endisset"><a href="{{ route('admin-faculties') }}"><i class="zmdi zmdi-city-alt"></i>&nbsp; Faculties</a></li>
                                    <li class="@isset($admin_headsubadmins){{$admin_headsubadmins}} @endisset"><a href="{{ route('admin-head_sub_admin') }}"><i class="zmdi zmdi-account-box"></i>&nbsp; Head Sub Admins</a></li>
                                    <li class="@isset($admin_schools){{$admin_schools}} @endisset"><a href="{{ route('admin-schools') }}"><i class="zmdi zmdi-graduation-cap"></i>&nbsp; Schools</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-comment-more"></i>&nbsp; Support Messages</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-notifications-add"></i>&nbsp; Post</a></li>
                                </ul>
                            </li>
                        @endif
                        @if(session('super_admin') =="yes")
                            <li class="sub-menu">
                                <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-account-circle"></i>Super Admin</a>
        
                                <ul>
                                    <li><a href="dashboards/analytics.html"><i class="zmdi zmdi-cloud"></i>&nbsp; Courses</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-male-female"></i>&nbsp; Students</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-account-circle"></i>&nbsp; Admins</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-account-box"></i>&nbsp; Head Sub Admins</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-accounts"></i>&nbsp; Sub Admins</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-graduation-cap"></i>&nbsp; Schools</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-comment-more"></i>&nbsp; Support Messages</a></li>
                                    <li><a href="dashboards/school.html"><i class="zmdi zmdi-notifications-add"></i>&nbsp; Post</a></li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </aside>
    
                <aside id="chat" class="sidebar">
    
                    <div class="chat-search">
                        <div class="fg-line">
                            <input type="search" class="form-control" placeholder="Search People">
                            <i class="zmdi zmdi-search"></i>
                        </div>
                    </div>
                </aside>
    
            @yield('dashboard_content')
        </section>
        
        <footer id="footer">
            Copyright &copy; 2018 {{session('project_name')}} Developed by <a target="_blank" href='https://chigisoft.com'>Chigisoft</a>
            {{-- <ul class="f-menu">
                <li><a href="">Home</a></li>
                <li><a href="">Dashboard</a></li>
                <li><a href="">About</a></li>
                <li><a href="">FAQs</a></li>
                <li><a href="">Support</a></li>
            </ul> --}}
        </footer>

    <!-- Result Modal -->
    <div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="cgpa-result">Your CGPA is: </h5>
                   {{-- <h5 class="modal-title" id="tqp-result">Your CGPA is: </h5>
                  <h5 class="modal-title" id="tcu-result">Your CGPA is: </h5>  --}}
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" align="center">
                    {{--  <div class="col-md-12" id="result-div">
        
                    </div>  --}}
                    <table class="table table-striped table-condensed table-hover table-responsive">
                        <thead>
                            <tr>
                                <th scope="col">Year</th>
                                <th scope="col">Semester</th>
                                <th scope="col">GPA:</th>
                            </tr>
                            <tr id="spin">
                                <td></td>
                                <td class="text-center">
                                    <span class="fa fa-spinner fa-spin"></span>
                                </td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody id="result-table">
                            
                        </tbody>
                    </table>
                    <div class="col-md-12" id="save-response">
                         
                         
                    </div>
                    @if(!isset($target_page))
                        @if (session('subscription') == 1)
                            <div class="col-md-12" id="save-btn" align="center">
                                <button class="btn btn-primary btn-sm m-t-10" type="button"  onclick="save_result();" id="save-result">Save Result</button>
                            </div>
                        @else
                            <div class="col-md-12" id="save-btn" align="center">
                                <h4>To be able to Calculate your CGPA for the other years, Target CGPA, Save Targets and Save Results you need to suscribe 
                                    <a href="{{route('subscriptions')}}">here</a>
                                </h4>
                            </div>
                        @endif
                    @endif
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
        </div>


         <!-- Target Modal -->
        <div class="modal fade" id="targetModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Target Response</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="col-md-12" align="center">
                        <div class="preloader pl-xl" id="target-preloader">
                            <svg class="pl-circular" viewBox="25 25 50 50">
                                <circle class="plc-path" cx="50" cy="50" r="20"/>
                            </svg>
                        </div>
                        <div class="col-md-12" id="targeting">
                             Targeting ...
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
         <!-- Javascript Libraries -->
        <!-- Javascript Libraries -->
        <script src="{{ url('vendors/bower_components/jquery/dist/jquery.min.js') }}"></script>
        <script src="{{ url('vendors/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
        
                <script src="{{ url('vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/Waves/dist/waves.min.js')}}"></script>
        <script src="{{ url('vendors/bootstrap-growl/bootstrap-growl.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/sweetalert2/dist/sweetalert2.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>


        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        <!-- Javascript Libraries -->

        <script src="{{ url('vendors/bower_components/moment/min/moment.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js')}}"></script>
        <script src="{{ url('vendors/bower_components/nouislider/distribute/nouislider.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/typeahead.js/dist/typeahead.bundle.min.js')}}"></script>
        <script src="{{ url('vendors/bower_components/dropzone/dist/min/dropzone.min.js')}}"></script>
        <script src="{{ url('vendors/summernote/dist/summernote-updated.min.js')}}"></script>
       
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
                <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
            <![endif]-->
        @if (Auth::user()->subscribed == 0)
            <script>
                subscription = false
            </script>
        @endif
        @if (Auth::user()->subscribed == 1)
            <script>
                subscription = true
            </script>
        @endif
        <script src="{{ url('vendors/bower_components/chosen/chosen.jquery.js')}}"></script>
        <script src="{{ url('vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js')}}"></script>
        <script src="{{ url('vendors/fileinput/fileinput.min.js')}}"></script>
        <script src="{{ url('vendors/farbtastic/farbtastic.min.js')}}"></script>
        <script src="{{ url('js/app.min.js')}}"></script>
        <script src="{{ url('js/Myscript.js')}}"></script>
        <script>
            function withdraw(balance) {
                if (balance < 2000) {
                    swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "You cannot withdraw if your balance is less than &#x20a6;2,000");
                } else {

                }
            }
        </script>
        @isset($target_not_exact_or_feasible)
            <script>
                swal("Target Not Feasible! <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "{{$target_msg}}");
            </script>
        @endisset
        @if(Session::has('new-signup'))
            <script>
                //New signup Message
                swal("Good job!, but one more thing.", "To be able get the full features of the app, you need to suscribe here or you can <a href='{{ route('calculator') }}'>Continue Without Paying</a>", "success")
            </script>
        @endif
        @if(Session::has('success'))
            <script>
                swal("{{ session::get('success') }}","", "success");
            </script>
        @endif
        @if(Session::has('fail-subscription'))
            <script>
                swal("You're not Suscribed!!! <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "{{ session::get('fail-subscription') }}");
            </script>
        @endif
        @if(Session::has('expired-subscription'))
            <script>
                swal("Your Subscription has Expired!!! <font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "{{ session::get('expired-subscription') }}");
            </script>
        @endif
        @if(Session::has('fail'))
            <script>
                swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "<strong>{{ session::get('fail') }}</strong>");
            </script>
        @endif
        @isset($fail)
            <script>
                swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "{{$fail}}");
            </script>
        @endisset
         @yield('dashbaord_scripts')
    </body>
  </html>