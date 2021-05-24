@extends('layouts.master')

@section('pageTitle', 'Task-app | Home')

@section('content')

<div id="navSection">
    @include('layouts.header')
</div>

@php
    $i=0;
@endphp

<div class="container mt-5 mb-5">
    <div class="card">
        <div class="card-body">
            <table>
                <tr class="text-center">
                    <th>Sr. No.</th>
                    <th>Pool 1</th>
                    <th>Pool 2</th>
                    <th>Pool 3</th>
                </tr>
                @foreach($details as $data)
                <tr>
                    @php $i++;@endphp
                    <th>@php echo $i ; @endphp</th>
                  @if( $data['pool_rank'] == 1)
                    <td>{!! $data['name'] !!}  (${!! $data['wallet'] !!})</td>
                  @elseif( $data['pool_rank'] == 2)
                    <td></td>
                    <td>{!! $data['name'] !!}  (${!! $data['wallet'] !!})</td>
                  @else
                    <td></td>
                    <td></td>
                    <td>{!! $data['name'] !!}  (${!! $data['wallet'] !!})</td>
                  @endif
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>

<div id="footerSection">
    @include('layouts.footer')
</div>

@endsection


