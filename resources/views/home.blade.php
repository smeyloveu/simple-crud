@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading" style="margin: 0 15px;"><b>Dashboard</b> <a style="margin-top: -7px;" href="{{ url('user/create') }}" class="btn btn-primary pull-right">Create</a></div>
                <div class="panel-body">
                    <div class="row body">

                    <div class="col-md-12">
                        <div class="panel-body panel_content">
                            <table class="table table-bordered">
                            <tr>
                                <th>User_ID</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Activation</th>
                                <th width="280px">Action</th>
                            </tr>
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->username }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->activate }}</td>
                                <td>
                                    <a href="{{ route('user.show', $user->id) }}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                    <a href="{{ route('user.edit', $user->id) }}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        </table>  
                        {!! $users->render() !!}       
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
