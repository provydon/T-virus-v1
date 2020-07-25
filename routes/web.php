<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('login');
// });

Route::get('/{school?}', "AuthController@get_Login")->name("login-form");
Route::get('/ref/{refering_user?}', "AuthController@referal")->name("ref-form");
Route::post('/signup', "Register@signup")->name("signup");
Route::post('/signup_via_fb', "Register@signup_via_fb")->name("signup_via_fb");
Route::post('/login', "Login@login")->name("login");
Route::post('/login_via_fb', "Login@login_via_fb")->name("login_via_fb");
Route::post('/logout', "AuthController@logout")->name("logout");

// Password Reset
Route::post('/forgot_password', "AuthController@forgotPassword")->name("forgot_password");
Route::get('/resets/{token?}/{id?}', "AuthController@resetPage")->name("password_reset_page");
Route::post('/change_password', "AuthController@changePassword")->name("change_password");

Route::group(['middleware' => ['CheckAuth']], function () {
    //
    Route::post('/load_course_depts', "Data@load_course_depts")->name("load_course_depts");
    Route::post('/privacy', "AuthController@privacy")->name("privacy");

    // Wave routes
    Route::get('/verify_payment/{key?}', "AuthController@verify_payment")->name("verify_payment");
    Route::get('/verify_paystack_payment/{key?}', "AuthController@verify_paystack_payment")->name("verify_paystack_payment");




    // Dashboard Routes
    Route::group(['prefix'=>'dashboard'],function(){
        Route::get('/calculator', "Dashboard@calculator")->name("calculator");
        Route::get('/settings', "AuthController@settings")->name("settings");
        Route::get('/subscriptions', "AuthController@paystack_subscriptions")->name("subscriptions");
        Route::get('/referral', "Dashboard@referral")->name("referral");
        Route::get('/about', "AuthController@about")->name("about");
    });


    // Protected Dashboard Routes
    Route::group(['prefix'=>'dashboard','middleware' => 'subscription'],function(){
        Route::get('/target', "Dashboard@target_cgpa")->name("target_cgpa");
        Route::get('/saved_targets', "Dashboard@saved_targets")->name("saved_targets");
        Route::get('/test', "Dashboard@test")->name("test");
        Route::get('/results', "Dashboard@results")->name("results");
       
    });

    Route::post('/setup', "AuthController@setup")->name("setup");

    // Notification Routes
    Route::post('/clear_notifications', "Dashboard@clear_notifications")->name("clear_notifications");


    // Calculation Routes
    Route::post('/target', "CalculateController@target_cgpa")->name("target");
    Route::post('/calculate', "CalculateController@calculate_cgpa")->name("calculate");
    Route::post('/calculate_and_check', "CalculateController@calculate_and_check")->name("calculate_and_check");
    Route::post('/test', "CalculateController@test_cgpa")->name("test_cgpa");

    // Save Calculations Routes
    Route::post('/save-result', "ResultController@save_result")->name("save-result");
    Route::post('/save-target', "TargetController@save_target")->name("save-target");


    // Sub Admin Routes
    Route::get('/dashboard/sub-admin/courses', "subAdminController@courses")->name("sub-admin-courses");
    Route::get('/dashboard/sub-admin/students', "subAdminController@all_students")->name("sub-admin-students");
    Route::post('/dashboard/sub-admin/add_course', "subAdminController@add_courses")->name("sub-admin-add-course");
    Route::post('/dashboard/sub-admin/update_course', "subAdminController@update_course")->name("sub-admin-update-course");

    // Head Sub Admin Routes
    Route::get('/dashboard/head-sub-admin/courses', "headSubAdminController@courses")->name("head-sub-admin-courses");
    Route::get('/dashboard/head-sub-admin/students', "headSubAdminController@all_students")->name("head-sub-admin-students");
    Route::get('/dashboard/head-sub-admin/departments', "headSubAdminController@departments")->name("head-sub-admin-departments");
    Route::get('/dashboard/head-sub-admin/faculties', "headSubAdminController@faculties")->name("head-sub-admin-faculties");
    Route::post('/dashboard/head-sub-admin/add_dept', "headSubAdminController@add_department")->name("head-sub-admin-add-dept");
    Route::post('/dashboard/head-sub-admin/add_faculty', "headSubAdminController@add_faculty")->name("head-sub-admin-add-faculty");
    Route::post('/dashboard/head-sub-admin/update_course', "headSubAdminController@update_course")->name("head-sub-admin-update-course");
    Route::post('/dashboard/head-sub-admin/add_course', "headSubAdminController@add_courses")->name("head-sub-admin-add-course");
    Route::post('/dashboard/head-sub-admin/make_sub_admin', "headSubAdminController@make_sub_admin")->name("head-sub-admin-make-sub-admin");
    Route::get('/dashboard/head-sub-admin/sub_admins', "headSubAdminController@sub_admins")->name("head-sub-admin-sub_admins");
    Route::post('/dashboard/head-sub-admin/remove_sub_admins', "headSubAdminController@remove_sub_admins")->name("head-sub-admin-remove_sub_admins");
    Route::post('/dashboard/head-sub-admin/update_dept', "headSubAdminController@update_dept")->name("head-sub-admin-update_dept");
    Route::post('/dashboard/head-sub-admin/delete_dept', "headSubAdminController@delete_dept")->name("head-sub-admin-delete_dept");
    Route::post('/dashboard/head-sub-admin/update_faculty', "headSubAdminController@update_faculty")->name("head-sub-admin-update_faculty");
    Route::post('/dashboard/head-sub-admin/delete_faculty', "headSubAdminController@delete_faculty")->name("head-sub-admin-delete_faculty");
    Route::post('/bulk_email', "headSubAdminController@send_bulk_email")->name("head-sub-admin-send_bulk_email");



    // Admin Routes
    Route::get('/dashboard/admin/students', "AdminController@all_students")->name("admin-students");
    Route::get('/dashboard/admin/sub_admin', "AdminController@sub_admins")->name("admin-sub_admin");
    Route::get('/dashboard/admin/head_sub_admin', "AdminController@head_sub_admins")->name("admin-head_sub_admin");
    Route::get('/dashboard/admin/schools', "AdminController@schools")->name("admin-schools");
    Route::post('/dashboard/admin/make_head_sub_admin', "AdminController@make_head_sub_admin")->name("admin-make_head_sub_admin");
    Route::post('/dashboard/admin/remove_head_sub_admin', "AdminController@remove_head_sub_admin")->name("admin-remove_head_sub_admin");
    Route::post('/dashboard/admin/update_school', "AdminController@update_school")->name("admin-update_school");
    Route::post('/dashboard/admin/add_school', "AdminController@add_school")->name("admin-add_school");
    Route::post('/dashboard/admin/delete_school', "AdminController@delete_school")->name("admin-delete_school");
    Route::get('/dashboard/admin/courses', "AdminController@courses")->name("admin-courses");
    Route::post('/dashboard/admin/add_course', "AdminController@add_courses")->name("admin-add-course");
    Route::post('/dashboard/admin/update_course', "AdminController@update_course")->name("admin-update-course");
    Route::get('/dashboard/admin/departments', "AdminController@departments")->name("admin-departments");
    Route::post('/dashboard/admin/update_dept', "AdminController@update_dept")->name("admin-update_dept");
    Route::post('/dashboard/admin/delete_dept', "AdminController@delete_dept")->name("admin-delete_dept");
    Route::post('/dashboard/admin/add_dept', "AdminController@add_department")->name("admin-add_dept");
    Route::post('/dashboard/admin/remove_sub_admins', "headSubAdminController@remove_sub_admins")->name("admin-remove_sub_admins");
    Route::post('/dashboard/admin/update_faculty', "AdminController@update_faculty")->name("admin-update_faculty");
    Route::post('/dashboard/admin/delete_faculty', "AdminController@delete_faculty")->name("admin-delete_faculty");
    Route::post('/dashboard/admin/add_faculty', "AdminController@add_faculty")->name("admin-add-faculty");
    Route::get('/dashboard/admin/faculties', "AdminController@faculties")->name("admin-faculties");
    



    // Ajax Routes
    Route::post('/load_course_schools', "AjaxController@load_course_schools")->name("load_course_schools");
    Route::post('/load_course_faculties', "AjaxController@load_course_faculties")->name("load_course_faculties");
    Route::post('/load_course_depts', "AjaxController@load_course_depts")->name("load_course_depts");
    Route::post('/load_course_years', "AjaxController@load_course_years")->name("load_course_years");
    Route::post('/load_courses', "AjaxController@load_courses")->name("load_courses");
});


Route::get('/test/tester', "AuthController@tester")->name("tester");
