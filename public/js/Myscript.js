var csrf_token = $('meta[name="csrf-token"]').attr('content');
$(document).ready(function() {
    // Handler for .ready() called.
    $('html, body').animate({
        scrollTop: $('#data-table-basic').offset().top
    }, 3000);
});

function scroll_to_target() {
    // display target div
    $('#target-card').show();

    // Scroll to Target Div

    $('html, body').animate({
        scrollTop: $('#b-header').offset().top
    }, 1000);
}

function show_course_edit() {

    dept = $("#hs_dept").val();
    faculty = $("#hs_faculty").val();
    school = $("#hs_school").val();
    country = $("#hs_country").val();

    if (dept != null) {
        $("#hs_temp_dept").val(dept);
    }

    if (faculty != null) {
        $("#hs_temp_faculty").val(faculty);
    }

    if (school != null) {
        $("#hs_temp_school").val(school);
    }

    if (country != null) {
        $("#hs_temp_country").val(country);
    }

    $(".course_edit").show();
    $(".course_edit2").hide();
    $(".c-edit-btn").hide();
    $(".c-save-btn").show();
}

function cancel_course_edit() {
    $(".course_edit").hide();
    $(".course_edit2").show();
    $(".c-edit-btn").show();
    $(".c-save-btn").hide();
}

function grade_it(id) {
    var num = $("#letterGrade" + id).val();
    $("#grade" + id).val(num);
    console.log("gared_it");
}

function credit_it(id) {
    var num = $("#credit_units" + id).val();
    $("#units" + id).val(num);
    console.log("credit_it");
}

function load_course_schools() {
    country = $("#country").val();
    $("#hs_country").val(country);

    $.ajax({
        type: "post",
        url: "/load_course_schools",
        data: { country: $("#country").val(), _token: csrf_token },
        success: function(response) {
            $("#school").empty();
            $("#school").html("<option>--Select School----</option>");
            $.each(response, function(index, value) {
                $("#school").append("<option>" + value.school_name + "</option>");
            });
        }
    });
}


function load_course_faculties() {

    school = $("#school").val();
    $("#hs_school").val(school);

    $.ajax({
        type: "post",
        url: "/load_course_faculties",
        data: { school: $("#school").val(), _token: csrf_token },
        success: function(response) {
            $("#faculty").empty();
            $("#faculty").html("<option>--Select Faculty----</option>");
            $.each(response, function(index, value) {
                $("#faculty").append("<option>" + value.faculty_name + "</option>");
            });
        }
    });
}

function load_course_depts() {

    faculty = $("#faculty").val();
    $("#hs_faculty").val(faculty);

    $.ajax({
        type: "post",
        url: "/load_course_depts",
        data: { faculty: $("#faculty").val(), school: $("#school").val(), _token: csrf_token },
        success: function(response) {
            $("#dept").empty();
            $("#dept").html("<option>--Select Department--</option>");
            $.each(response, function(index, value) {
                $("#dept").append("<option>" + value.department_name + "</option>");
            });
        }
    });
    console.log("depts");
}

function calculate() {
    $("#resultModal").modal("show");
    var formData = $('#calculator-form').serialize();
    var url = "/calculate";

    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        _token: csrf_token,
        dataType: "json",
        success: function(response) {

            if (!subscription) {

                $("#result-table").empty();
                $("#spin").remove();
                $.each(response, function(index, value) {
                    if (index == 1) {
                        $("#result-table").append("<tr><td> 1 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 2) {
                        $("#result-table").append("<tr><td> 1 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == "GPAy1") {
                        $("#result-table").append("<tr><td colspan='2'><strong>Your Year 1 CGPA:</strong></td> <td><strong>" + value + "</strong></td></tr>");
                        $("#cgpa-result").html("Your Year 1 CGPA is: " + value);
                        $("#cgpa").val(value);
                    }
                });
                $("#result-table").append("<tr id='spin'><td></td><td class='text-center'> You're not Suscribed!</td><td></td>")

            } else {
                $("#result-table").empty();
                $("#spin").hide();
                $.each(response, function(index, value) {

                    // $("#result-row1").append(""+index+":"+value+"<br>");

                    if (index == 1) {
                        $("#result-table").append("<tr><td> 1 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 2) {
                        $("#result-table").append("<tr><td> 1 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == 3) {
                        $("#result-table").append("<tr><td> 2 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 4) {
                        $("#result-table").append("<tr><td> 2 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == 5) {
                        $("#result-table").append("<tr><td> 3 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 6) {
                        $("#result-table").append("<tr><td> 3 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == 7) {
                        $("#result-table").append("<tr><td> 4 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 8) {
                        $("#result-table").append("<tr><td> 4 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == 9) {
                        $("#result-table").append("<tr><td> 5 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                    } else if (index == 10) {
                        $("#result-table").append("<tr><td> 5 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                    } else if (index == "display_CGPA") {
                        $("#result-table").append("<tr><td colspan='2'><strong>Your CGPA:</strong></td> <td><strong>" + value + "</strong></td></tr>");
                        $("#cgpa-result").html("Your CGPA is: " + value);
                        $("#cgpa").val(value);
                    }
                    // else if(index == "TCU"){

                    //     $("#tcu-result").html("Your Total Credit Load is: "+value);
                    // }
                    // else if(index == "TQP"){

                    //     $("#tqp-result").html("Your Total Quality Point is: "+value);
                    // }
                });
            }
        },
        error: function() {

        }
    });

    console.log("calculator-form");

}

function calculate_and_check() {
    $("#resultModal").modal("show");
    var formData = $('#calculator-form').serialize();
    var url = "/calculate_and_check";

    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        _token: csrf_token,
        dataType: "json",
        success: function(response) {
            $("#result-table").empty();
            $("#spin").hide();
            $.each(response, function(index, value) {
                // $("#result-row1").append(""+index+":"+value+"<br>");

                if (index == 1) {
                    $("#result-table").append("<tr><td> 1 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                } else if (index == 2) {
                    $("#result-table").append("<tr><td> 1 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                } else if (index == 3) {
                    $("#result-table").append("<tr><td> 2 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                } else if (index == 4) {
                    $("#result-table").append("<tr><td> 2 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                } else if (index == 5) {
                    $("#result-table").append("<tr><td> 3 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                } else if (index == 6) {
                    $("#result-table").append("<tr><td> 3 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                } else if (index == 7) {
                    $("#result-table").append("<tr><td> 4 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                } else if (index == 8) {
                    $("#result-table").append("<tr><td> 4 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                } else if (index == 9) {
                    $("#result-table").append("<tr><td> 5 </td> <td> 1st </td> <td>" + value + "</td></tr>");
                } else if (index == 10) {
                    $("#result-table").append("<tr><td> 5 </td> <td> 2nd </td> <td>" + value + "</td></tr>");
                } else if (index == "display_CGPA") {
                    $("#result-table").append("<tr><td colspan='2'><strong>Your CGPA:</strong></td> <td><strong>" + value + "</strong></td></tr>");
                    $("#cgpa-result").html("Your CGPA is: " + value);
                    $("#target_cgpa").val(value);
                }
                // else if(index == "TCU"){

                //     $("#tcu-result").html("Your Total Credit Load is: "+value);
                // }
                // else if(index == "TQP"){

                //     $("#tqp-result").html("Your Total Quality Point is: "+value);
                // }
            });

            // setTimeout(function() {
            //     $("#response").fadeOut().empty();
            // }, 5000)
        },
        error: function() {

        }
    });

    console.log("calculator-form");
}

function save_result() {
    $('#save-response').html("");
    $('#save-response').fadeIn();
    $('#save-btn').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
    var formData = $('#calculator-form').serialize();
    var url = "/save-result";

    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        _token: csrf_token,
        success: function(response) {
            if (response == "saved") {
                $('#save-btn').hide();
                $('#save-response').html("Your Result has been saved <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
                $('#save-response').fadeOut(5000);
                $('#save-btn').html("<button class='btn btn-primary btn-sm m-t-10' type='button'  onclick='save_result();' id='save-result'>Save Result</button>");
                $('#save-btn').fadeIn(7000);
            } else {

            }
        },
        error: function() {
            // $('#save-result').html("couldnt Save result");
            // $("#save-result").toggleClass("btn btn-talk");
        }
    });

    console.log("save-result");
}

function targe() {
    var target = $('#target').val();
    $('#targeting').html("Targeting " + target + "...");
    $("#targetModal").modal("show");

    var formData = $('#calculator-form').serialize();
    var url = "/target";

    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        _token: csrf_token,
        dataType: "json",
        success: function(response) {
            if (response == "Not Feasible") {

            }
        },
        error: function() {

        }
    });


    console.log("target");
}

function save_target() {
    $('.save_target').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
    var formData = $('#calculator-form').serialize();
    var url = "/save-target";
    var target = $("#target_cgpa").val();

    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        _token: csrf_token,
        success: function(response) {
            if (response == "saved") {
                swal("Target Saved!", "The Results for your Target CGPA of " + target + " has been saved", "success");
                $('.save_target').html("<button type='button' class='btn btn-success btn-sm m-t-10' onclick='save_target()'' id='save-target-btn'>Save target</button>");
                $('.save_target').fadeIn(7000);
            } else {

            }
        },
        error: function() {
            // $('#save-result').html("couldnt Save result");
            // $("#save-result").toggleClass("btn btn-talk");
        }
    });

    console.log("save-target");
}

function load_courses() {
    $("#load").html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
    var url = "/load_courses";

    dept = $("#dept").val();
    $("#hs_dept").val(dept);

    $.ajax({
        type: "POST",
        url: url,
        data: { school: $("#school").val(), admin_type: $("#admin_type").val(), department: $("#dept").val(), _token: csrf_token },

        success: function(html) {
            $("#load").html(html);
        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("load_courses-div");
}

function admin_remove_sub_admin(user_id) {
    swal({
        title: "Are you sure?",
        text: "That user's department will not have a Sub Admin anymore if you remove Him/Her!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, remove Him/Her!",
    }).then(function() {
        $('#user_' + user_id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/admin/remove_sub_admins";
        $.ajax({
            type: "POST",
            url: url,
            data: { user_id: user_id, _token: csrf_token },
            success: function(html) {
                $('#user_row_' + user_id).hide();
                if (html == "updated") {
                    swal("Removed!", "That User has been removed as Sub Admin.", "success");
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("remove_sub_admin");

}

function remove_sub_admin(user_id) {
    swal({
        title: "Are you sure?",
        text: "That user's department will not have a Sub Admin anymore if you remove Him/Her!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, remove Him/Her!",
    }).then(function() {
        $('#user_' + user_id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/head-sub-admin/remove_sub_admins";
        $.ajax({
            type: "POST",
            url: url,
            data: { user_id: user_id, _token: csrf_token },
            success: function(html) {
                $('#user_row_' + user_id).hide();
                if (html == "updated") {
                    swal("Removed!", "That User has been removed as Sub Admin.", "success");
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("remove_sub_admin");

}

function remove_head_sub_admin(user_id) {
    swal({
        title: "Are you sure?",
        text: "That user's School will not have a Head Sub Admin anymore if you remove Him/Her!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, remove Him/Her!",
    }).then(function() {
        $('#user_' + user_id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/admin/remove_head_sub_admin";
        $.ajax({
            type: "POST",
            url: url,
            data: { user_id: user_id, _token: csrf_token },
            success: function(html) {
                $('#user_row_' + user_id).hide();
                if (html == "updated") {
                    swal("Removed!", "That User has been removed as Head Sub Admin.", "success");
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("remove_head_sub_admin");

}

function make_sub_admin(user_id) {

    $('#user_' + user_id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
    var url = "/dashboard/head-sub-admin/make_sub_admin";


    $.ajax({
        type: "POST",
        url: url,
        data: { user_id: user_id, _token: csrf_token },

        success: function(html) {
            $('#user_' + user_id).html("");
            if (html == "fail") {
                swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "That User's department already has a Sub Admin");
            } else if (html == "updated") {
                swal("Sub Admin Created!", "That User has been made Sub Admin", "success");
            } else {
                swal("Sub Admin Created!", html, "success");
            }
        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("make_sub_admin");
}

function make_head_sub_admin(user_id) {

    $('#user_' + user_id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
    var url = "/dashboard/admin/make_head_sub_admin";

    $.ajax({
        type: "POST",
        url: url,
        data: { user_id: user_id, _token: csrf_token },

        success: function(html) {
            $('#user_' + user_id).html("");
            if (html == "fail") {
                swal("<font color='red'><i class='glyphicon glyphicon-warning-sign'></i></font>", "That User's School already has a Head Sub Admin");
            } else if (html == "updated") {
                swal("Head Sub Admin Created!", "That User has been made Head Sub Admin", "success");
            } else {
                swal("Head Sub Admin Created!", html, "success");
            }
        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("make_head_sub_admin");
}


function edit_row(id) {
    $(".table_show_" + id).hide();
    $(".table_edit_" + id).show();
    $(".edit-options" + id).show();
    console.log("Edit_row");
}

function cancel_row(id) {
    $(".table_show_" + id).show();
    $(".table_edit_" + id).hide();
    $(".edit-options" + id).hide();
    console.log("cancel_row");
}

function update_dept(id) {

    swal("<span class='fa fa-spinner fa-spin' id='spin'></span>", "Updating...");
    var url = "/dashboard/head-sub-admin/update_dept";

    $.ajax({
        type: "POST",
        url: url,
        data: { dept_id: $("#dept_id" + id).val(), dept: $("#dept" + id).val(), faculty: $("#faculty" + id).val(), years: $("#years" + id).val(), semesters: $("#semesters" + id).val(), _token: csrf_token },
        success: function(response) {

            $.each(response, function(index, value) {

                $("#dept" + id).val(value.department_name);
                $("#faculty" + id).val(value.faculty_name);
                $("#years" + id).val(value.years);
                $("#semesters" + id).val(value.semesters);

                $("#td_1_" + id).html(value.department_name);
                $("#td_2_" + id).html(value.faculty_name);
                $("#td_3_" + id).html(value.years);
                $("#td_4_" + id).html(value.semesters);

            });

            swal("Updated!", "Department has been updated", "success");
            $(".table_show_" + id).show();
            $(".table_edit_" + id).hide();
            $(".edit-options" + id).hide();

        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("update_dept");
}

function update_dept_admin(id) {

    swal("<span class='fa fa-spinner fa-spin' id='spin'></span>", "Updating...");
    var url = "/dashboard/admin/update_dept";

    $.ajax({
        type: "POST",
        url: url,
        data: { dept_id: $("#dept_id" + id).val(), dept: $("#dept" + id).val(), faculty: $("#faculty" + id).val(), years: $("#years" + id).val(), semesters: $("#semesters" + id).val(), _token: csrf_token },
        success: function(response) {

            $.each(response, function(index, value) {

                $("#dept" + id).val(value.department_name);
                $("#faculty" + id).val(value.faculty_name);
                $("#years" + id).val(value.years);
                $("#semesters" + id).val(value.semesters);


                $("#td_1_" + id).html(value.department_name);
                $("#td_2_" + id).html(value.faculty_name);
                $("#td_3_" + id).html(value.years);
                $("#td_4_" + id).html(value.semesters);


            });

            swal("Updated!", "Department has been updated", "success");
            $(".table_show_" + id).show();
            $(".table_edit_" + id).hide();
            $(".edit-options" + id).hide();

        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("update_dept");
}

function update_school(id) {

    swal("<span class='fa fa-spinner fa-spin' id='spin'></span>", "Updating...");
    var url = "/dashboard/admin/update_school";

    $.ajax({
        type: "POST",
        url: url,
        data: { school_id: $("#school_id" + id).val(), school: $("#school" + id).val(), country: $("#country" + id).val(), school_nickname: $("#school_nickname" + id).val(), _token: csrf_token },
        success: function(response) {

            $.each(response, function(index, value) {

                $("#school" + id).val(value.school_name);
                $("#country" + id).val(value.country);
                $("#school_nickname" + id).val(value.school_nickname);


                $("#td_1_" + id).html(value.school_name);
                $("#td_2_" + id).html(value.country);
                $("#td_3_" + id).html(value.school_nickname);


            });

            swal("Updated!", "School has been updated", "success");
            $(".table_show_" + id).show();
            $(".table_edit_" + id).hide();
            $(".edit-options" + id).hide();

        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("update_school");
}

function delete_school(id) {
    swal({
        title: "Are you sure?",
        text: " you are about to delete this School ",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, delete it!",
    }).then(function() {
        $('#row_' + id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/admin/delete_school";
        $.ajax({
            type: "POST",
            url: url,
            data: { school_id: id, _token: csrf_token },
            success: function(html) {
                $('#row_' + id).hide();
                swal("Deleted!", html, "success");
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("delete_school");
}

function delete_dept(id) {
    swal({
        title: "Are you sure?",
        text: " you are about to delete this department ",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, delete it!",
    }).then(function() {
        $('#row_' + id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/head-sub-admin/delete_dept";
        $.ajax({
            type: "POST",
            url: url,
            data: { dept_id: id, _token: csrf_token },
            success: function(html) {
                $('#row_' + id).hide();
                swal("Deleted!", html, "success");
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("delete_dept");
}

function delete_dept_admin(id) {
    swal({
        title: "Are you sure?",
        text: " you are about to delete this department ",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, delete it!",
    }).then(function() {
        $('#row_' + id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/admin/delete_dept";
        $.ajax({
            type: "POST",
            url: url,
            data: { dept_id: id, _token: csrf_token },
            success: function(html) {
                $('#row_' + id).hide();
                swal("Deleted!", html, "success");
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("delete_dept");
}

function update_faculty(id) {
    swal("<span class='fa fa-spinner fa-spin' id='spin'></span>", "Updating...");
    var url = "/dashboard/head-sub-admin/update_faculty";

    $.ajax({
        type: "POST",
        url: url,
        data: { faculty_id: $("#faculty_id" + id).val(), faculty: $("#faculty" + id).val(), _token: csrf_token },
        success: function(response) {

            $.each(response, function(index, value) {
                $("#faculty" + id).val(value.faculty_name);
                $("#td_1_" + id).html(value.faculty_name);
            });

            swal("Updated!", "Faculty has been updated", "success");
            $(".table_show_" + id).show();
            $(".table_edit_" + id).hide();
            $(".edit-options" + id).hide();

        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("update_faculty");
}

function admin_update_faculty(id) {
    swal("<span class='fa fa-spinner fa-spin' id='spin'></span>", "Updating...");
    var url = "/dashboard/admin/update_faculty";

    $.ajax({
        type: "POST",
        url: url,
        data: { faculty_id: $("#faculty_id" + id).val(), faculty: $("#faculty" + id).val(), _token: csrf_token },
        success: function(response) {

            $.each(response, function(index, value) {
                $("#faculty" + id).val(value.faculty_name);
                $("#td_1_" + id).html(value.faculty_name);
            });

            swal("Updated!", "Faculty has been updated", "success");
            $(".table_show_" + id).show();
            $(".table_edit_" + id).hide();
            $(".edit-options" + id).hide();

        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("update_faculty");
}

function delete_faculty(id) {
    swal({
        title: "Are you sure?",
        text: " you are about to delete this Faculty ",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, delete it!",
    }).then(function() {
        $('#row_' + id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/head-sub-admin/delete_faculty";
        $.ajax({
            type: "POST",
            url: url,
            data: { faculty_id: id, _token: csrf_token },
            success: function(html) {
                $('#row_' + id).hide();
                swal("Deleted!", html, "success");
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("delete_faculty");
}

function admin_delete_faculty(id) {
    swal({
        title: "Are you sure?",
        text: " you are about to delete this Faculty ",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, delete it!",
    }).then(function() {
        $('#row_' + id).html("<span class='fa fa-spinner fa-spin' id='spin'></span>");
        var url = "/dashboard/admin/delete_faculty";
        $.ajax({
            type: "POST",
            url: url,
            data: { faculty_id: id, _token: csrf_token },
            success: function(html) {
                $('#row_' + id).hide();
                swal("Deleted!", html, "success");
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
    console.log("delete_faculty");
}

// Uppercase ALl Courses
$(".course_code").keyup(function() {
    $(this).val($(this).val().toUpperCase());
    console.log("toupper");
});

// Response Timeout
setTimeout(function() {
    $("#response").fadeOut().empty();
}, 5000);

// Data tables
$(document).ready(function() {
    $('#data-table-basic').DataTable();
});

function myFunction() {
    var copyText = document.getElementById("myInput");
    copyText.select();
    document.execCommand("copy");

    var tooltip = document.getElementById("myTooltip");
    tooltip.innerHTML = "Copied: " + copyText.value;
}

function outFunc() {
    var tooltip = document.getElementById("myTooltip");
    tooltip.innerHTML = "Copy to clipboard";
}

function clearNotifications() {

    var url = "/clear_notifications";

    $.ajax({
        type: "POST",
        url: url,
        data: { _token: csrf_token },

        success: function(html) {
            $('.him-counts').html("");
        },
        error: function(error) {
            console.log(error);
        }
    });
    console.log("make_head_sub_admin");
}

$('#select_all').change(function() {
    var checkboxes = $('#students-list').find(':checkbox');
    checkboxes.prop('checked', $(this).is(':checked'));

});

function getCheckedUsers() {

    if (document.getElementById('select_all').checked) {
        $('#selected_users').html("<li> All Users </li>");
    } else {

        var selected = [];
        $('#students-list input:checked').each(function() {
            selected.push($(this).attr('value'));
        });

        if (selected.length === 0) {

        } else {
            $('#selected_users').html("");
            $.each(selected, function(index, value) {
                $('#selected_users').append("<li>" + value + "</li>");
            });
        }

    }

}


function sendBulkEmail() {

    $('#bulk_email_response').html("<span class='fa fa-spinner fa-spin' id='spin'></span>");

    if (document.getElementById('select_all').checked) {
        var selected = "All Users";
    } else {
        var selected = [];
        $('#students-list input:checked').each(function() {
            selected.push($(this).attr('value'));
        });
    }


    $.ajax({
        type: "post",
        url: "/bulk_email",
        data: { users: selected, msg: $('#bulk_email').val(), _token: csrf_token },
        success: function(response) {
            $('#bulk_email_response').html(response + " <font color='green'><i class='glyphicon glyphicon-ok'></i></font>");
        }
    });

}


$("#mailModal").on("hidden.bs.modal", function() {
    $('#selected_users').html("<li>No Users Selected</li>");
});