@extends("layouts.dashboard")

@php
    $referral = "active";
@endphp

@section('dashboard_title')
Referrals
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

    <section id="content">
        <div class="container">
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <h2>Your Refferal Link
                            <small>Share this link to all your peeps on social media and earn money when they signup with it and subscribe.
                            </small>
                        </h2>
                    </div>
                    <div class="card-body card-padding">
                        <input type="text" value="{{ url('/ref/'.Auth::user()->id) }}" id="myInput" class="form-control input-sm" placeholder="Input Small" readonly>
                        <div class="tooltips">
                            <button onclick="myFunction()" onmouseout="outFunc()" class="btn btn-primary btn-sm m-t-10">
                                <span class="tooltiptext" id="myTooltip">Copy to clipboard</span>
                                Copy text
                            </button>
                        </div>
                    </div>
                </div>   
            </div>
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <h2>Students You've
                            <small>All the students you've referred from {{Auth::user()->school_name}}
                            </small>
                        </h2>
                    </div>
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped">
                            <thead>
                            <tr>
                                <th>S/N</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Department</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            {{-- <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Department</th>
                                </tr>
                            </tfoot> --}}
                            <tbody>
                                @foreach($refered_users as $key=>$row)
                                    <tr>
                                        <td>
                                            {{$key + 1}}
                                        </td>
                                        <td>
                                            {{$row->first_name}}
                                        </td>
                                        <td>
                                            {{$row->last_name}}
                                        </td>
                                        <td>
                                            {{$row->department_name}}
                                        </td>
                                        <td>
                                            @if ($row->subscribed == true)
                                                Subscribed
                                            @else
                                                Not Subscribed
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <h2>Money You've made
                            <small>All the money you've made from your Referred users
                            </small>
                        </h2>
                        <h5>
                           Total number of Subscribed Referred users: {{count($subscribed_refered_users)}}
                        </h5>
                        <h3>
                            @php
                                $fake_balance = count($refered_users) * 50;
                            @endphp
                            Balance: <span style="color:red;">&#x20a6;{{$fake_balance}}</span> <span><small>(this is money you could get if all your Referred Users subscribed)</small></span>
                        </h3>
                        <h3>
                            Withdrawable Balance: <span style="color:green;">&#x20a6;{{$balance}}</span> <span><small>(this is money you've made from Subscribed Referred Users)</small></span>
                        </h3>
                        <h3>
                            Total Withdrawals: &#x20a6;0.00
                        </h3>
                        <button class="btn btn-danger btn-sm m-t-10" onclick="withdraw({{$balance}})">Withdraw</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <h2>Withdrawals
                            <small>All the money you've withdrawn
                            </small>
                        </h2>
                    </div>
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped">
                            <thead>
                            <tr>
                                <th>S/N</th>
                                <th>Amount</th>
                                <th>Date</th>
                            </tr>
                            </thead>
                            {{-- <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Department</th>
                                </tr>
                            </tfoot> --}}
                            <tbody>
                                @foreach($withdrawals as $key=>$row)
                                    <tr>
                                        <td>
                                            {{$key + 1}}
                                        </td>
                                        <td>
                                            {{$row->amount}}
                                        </td>
                                        <td>
                                            {{ Carbon\Carbon::parse($row->created_at)->format('l j F Y') }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>   
            </div>
        </div>
    </section>
@endsection

@section('dashboard_scripts')
    
@endsection