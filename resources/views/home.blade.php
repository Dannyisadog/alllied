@extends('layouts.app')

@section('content')


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading">星座運勢 {{date('Y-m-d')}}</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    <div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col" width="5%">整體運勢</th>
                                    <th scope="col" width="20%">整體運勢說明</th>
                                    <th scope="col" width="5%">愛情運勢</th>
                                    <th scope="col"  width="20%">愛情運勢說明</th>
                                    <th scope="col" width="5%">事業運勢</th>
                                    <th scope="col"  width="20%">事業運勢說明</th>
                                    <th scope="col" width="5%">財運運勢</th>
                                    <th scope="col"  width="20%">財運運勢說明</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($fortune_data as $item)
                                    <tr>
                                        <th>{{$item->constellation}}</th>
                                        <td>{{$item->total_fortune_score}}</td>
                                        <td>{{$item->total_fortune_desc}}</td>

                                        <td>{{$item->love_fortune_score}}</td>
                                        <td>{{$item->love_fortune_desc}}</td>

                                        <td>{{$item->work_fortune_score}}</td>
                                        <td>{{$item->work_fortune_desc}}</td>

                                        <td>{{$item->money_fortune_score}}</td>
                                        <td>{{$item->money_fortune_desc}}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
