@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Detail User</div>

                <div class="panel-body">
                    <div class="row body">

                    <div class="col-md-12">
                        <div class="panel-body panel_content">
                            <table class="table table-bordered">
                            <tr>
                                <th>User_ID</th>
                                <th>Username</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Activation</th>
                            </tr>
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->username }}</td>
                                <td>{{ $user->phone }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->activate }}</td>
                            </tr>
                        </table>      
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection