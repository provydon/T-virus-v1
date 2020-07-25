@extends("layouts.dashboard")
@php
    $subscriptions = "active";
@endphp

@section('dashboard_title')
Subscriptions
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

<section id="content">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Subscribe to {{session('project_name')}}
                    <small>choose a suitable plan for you.
                    </small>
                </h2>
            </div>

            <div class="card-body card-padding">
                <div class="row">
                    @if (Auth::user()->subscribed == 1)
                        @foreach ($plans as $plan)
                            @if (Auth::user()->subscription_id == $plan->id)
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-header bgm-green">
                                            <p>
                                                <h2>You're Subscriibed!!!</h2>
                                            </p>
                                            <h2>&#8358;{{$plan->price}}/{{$plan->plan}}
                                                <small>{{$plan->duration}}</small>
                                            </h2>
                                            <p>
                                                <h2>Subscription ends on {{ Carbon\Carbon::parse(Auth::user()->subscription_end)->format('l j F Y') }}</h2>
                                            </p>
                                            <div id="resp"></div>
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="" data-toggle="dropdown" aria-expanded="false">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach
                    @else
                        @foreach ($plans as $plan)
                            <div class="col-sm-4">
                                <div class="card">
                                    <div class="card-header bgm-red">
                                        <h2>
                                            @if ($plan->price == 799.95)
                                                <span><strike>&#8358;999.95</strike></span>&nbsp;&nbsp;
                                            @endif
                                            &#8358;{{$plan->price}}/{{$plan->plan}}
                                            <small>{{$plan->duration}} (Limited time offer)</small>
                                        </h2>
                                        <div id="resp"></div>
                                        <ul class="actions actions-alt">
                                            <li class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="zmdi zmdi-more-vert"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                
                                    <div class="card-body card-padding" align="center">
                                        <button class="btn bgm-teal btn-sm m-t-10" onclick="payWithRave({{$plan->price}},'{{$plan->duration}}')">subscribe</button>
                                    </div>
                                
                                </div>
                            </div>
                        @endforeach 
                    @endif

                    @if($rave == 'live')
                    <script type="text/javascript" src="https://api.ravepay.co/flwv3-pug/getpaidx/api/flwpbf-inline.js"></script>
                    @else
                    <script type="text/javascript" src="https://ravesandboxapi.flutterwave.com/flwv3-pug/getpaidx/api/flwpbf-inline.js"></script>
                    @endif
                    <script>
    
                       function  payWithRave(price,duration) {
                            // alert(price);
                            // price = 2000
                            var PBFKey = "{{ $ravePublic }}";
    
                            getpaidSetup({
                            PBFPubKey: PBFKey,
                            customer_email: "{{ Auth::user()->email }}",
                            customer_firstname: "{{ Auth::user()->first_name }}",
                            customer_lastname: "{{ Auth::user()->last_name }}",
                            custom_description: "{{session('project_name')}} "+duration+" Subscription",
                            custom_logo: "{{ url('images/main_logo_alone.png') }}",
                            custom_title: "Chigisoft Ltd.",
                            amount: price,
                            customer_phone: "{{ Auth::user()->phone }}",
                            country: "NG",
                            currency: "NGN",
                            txref: "{{ $txRef }}",
                            onclose: function() {},
                            callback: function(response) {
                                var flw_ref = response.tx.flwRef; // collect flwRef returned and pass to a 					server page to complete status check.
                                console.log("This is the response returned after a charge", response);
                                if (
                                response.tx.chargeResponseCode == "00" ||
                                response.tx.chargeResponseCode == "0"
                                ) {
                                    location.href = "{{ url('verify_payment') }}"+'/'+response.tx.txRef;
                                } else {
                                    $("#resp").text('Something went wrong, try again');
                                }
                            }
                            });
                       }

                    </script>
                     @if (Auth::user()->subscribed != 1)
                        <div class="col-md-12" align="center">
                            <a href='{{ route('calculator') }}'>Continue Without Paying</a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('dashboard_scripts')

 
@endsection