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
                    <script src="https://js.paystack.co/v1/inline.js"></script>
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
                                        <button class="btn bgm-teal btn-sm m-t-10" onclick="payWithPaystack({{$plan->price}},'{{$plan->duration}}')">subscribe</button>
                                    </div>
                                
                                </div>
                            </div>
                        @endforeach 
                    @endif

                    <script>

                        function payWithPaystack(price,duration){

                            var PBFKey = "{{ $paystackPublic }}";

                            if(price == 799.95){
                                price = 79995
                            }else{
                                price = 49995
                            }

                            var handler = PaystackPop.setup({
                            key: PBFKey,
                            email: "{{ Auth::user()->email }}",
                            amount: price,
                            ref: "{{ $txRef }}",
                            firstname: "{{ Auth::user()->first_name }}",
                            lastname: "{{ Auth::user()->last_name }}",
                            // label: "Optional string that replaces customer email"
                            metadata: {
                                custom_fields: [
                                    {
                                        display_name: "Mobile Number",
                                        variable_name: "mobile_number",
                                        value: "{{ Auth::user()->phone }}"
                                    }
                                ]
                            },
                            callback: function(response){
                                console.log("This is the response returned after a charge", response.reference);
                                if (response.status == "success") {
                                    location.href = "{{ url('verify_paystack_payment') }}"+'/'+response.trxref;
                                } else {
                                    $("#resp").text('Something went wrong, try again');
                                }
                            },
                            onClose: function(){
                                // alert('window closed');
                            }
                            });
                            handler.openIframe();
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