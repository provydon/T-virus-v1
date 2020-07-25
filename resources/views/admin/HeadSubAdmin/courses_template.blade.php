<form class="form-inline courses-form" id="courses-form" action="{{ route('head-sub-admin-update-course') }}" method="post">
    {{ csrf_field() }}
       @foreach($section as $year => $semester)
           @foreach($semester as $semester_key => $value)
               @if($semester_key == 1)
                   @php
                       $semester_key_position = "1st";
                   @endphp
               @endif
               @if($semester_key == 2)
                   @php
                       $semester_key_position = "2nd";
                   @endphp
               @endif
               @if($semester_key == 3)
                   @php
                       $semester_key_position = "3rd";
                   @endphp
               @endif
               @if($semester_key == 4)
                   @php
                       $semester_key_position = "4th";
                   @endphp
               @endif
               <div class="col-sm-12">
                       <div class="card">
                           <div class="card-header" align="center">
                               <h2>Year {{$year}}
                                   <small>{{$semester_key_position}} Semester</small>
                               </h2>
                               <ul class="actions">
                                   <li class="dropdown action-show">
                                       <a href="" data-toggle="dropdown">
                                           <i class="zmdi zmdi-more-vert"></i>
                                       </a>

                                       <ul class="dropdown-menu dropdown-menu-right">
                                           <li>
                                               <a href="javascript:void(0)" onclick="show_course_edit()">Edit Courses</a>
                                           </li>
                                       </ul>
                                   </li>
                               </ul>
                           </div>

                           <div class="card-body table-responsive">
                               <table class="table table-striped table-bordered table-hover ">
                                   <thead>
                                   <tr>
                                       <th><strong>Course_code</strong></th>
                                       <th><strong>Credit_unit</strong></th>
                                   </tr>
                                   </thead>
                                   <tbody>
                                       @foreach($courses as $key => $row)
                                           @if($row->level == $year and $row->semester == $semester_key)
                                                <input type="hidden" name="level[]" value="{{$row->level}}"/>
                                                <input type="hidden" name="semester[]" value="{{$row->semester}}"/>
                                                   <tr>
                                                       <td >
                                                       <span class="course_edit">
                                                          <input type="text" class="form-control course_code " name="course_code[]"  placeholder="Enter Course Code" value="{{$row->course_code}}">
                                                      </span>
                                                        <input type="hidden" name="course_id[]" value="{{$row->id}}"/>
                                                      <span class="course_edit2">
                                                           {{$row->course_code}}
                                                       </span>
                                                       </td>
                                                       <td>
                                                       <span class="course_edit">
                                                           <select class=" cgpa form-control credit_unit" name="credit_unit[]">
                                                           <option>{{$row->credit_unit}}</option>
                                                               <option>--Units--</option>
                                                               @for($k=1;$k<=10;$k++)
                                                                   <option>{{$k}}</option>
                                                               @endfor
                                                           </select>
                                                       </span>
                                                       <span class="course_edit2">
                                                           {{$row->credit_unit}}
                                                       </span>
                                                       </td>
                                                   </tr>
                                           @endif
                                       @endforeach
                                   </tbody>
                               </table>
                           </div>
                       </div>
                   
               </div>
               <div class="col-sm-12 calculate-btn c-edit-btn" align="center">
                   <button type="button" class="btn btn-primary btn-sm m-t-10" onclick="show_course_edit()">Edit <i class="zmdi zmdi-edit"></i></button>
               </div>
               <div class="col-sm-12 calculate-btn c-save-btn" align="center">
                  <button type="submit" class="btn btn-success btn-sm m-t-10">Update &nbsp;<i class="zmdi zmdi-time"></i></button>
               </div>
           @endforeach
       @endforeach
   </form>