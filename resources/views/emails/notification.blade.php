<h1>
    Thanks {{$user_name}}!!
click this <a href="{{ route('password_reset_page',['token'=>$token,'id'=>$user_id])}}" target="_blank">Link</a>  to reset your password

</h1>