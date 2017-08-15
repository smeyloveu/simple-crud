@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Update User</div>

                <div class="panel-body">
                    <div class="row body">

                    <div class="col-md-12">
                        <div class="panel-body panel_content">

                            {!! Form::model($user, ['method'=>'post','route'=>['user.update', $user->id ], 'class'=>'form-horizontal']) !!}
                                {{csrf_field()}}
                                <div class="form-group">
                                    {!! Form::label('label', 'Username:', ['class'=>'col-sm-2']); !!}
                                    <div class="col-sm-10">
                                        {!! Form::text('username',$user->username, ['class'=>'form-control', 'required']); !!}
                                    </div>
                                </div>
                                <div class="form-group">
                                    {!! Form::label('label', 'Phone:', ['class'=>'col-sm-2']); !!}
                                    <div class="col-sm-10">
                                        {!! Form::text('phone',$user->phone, ['class'=>'form-control', 'required']); !!}
                                    </div>
                                </div>
                                <div class="form-group">
                                    {!! Form::label('label', 'email:', ['class'=>'col-sm-2']); !!}
                                    <div class="col-sm-10">
                                        {!! Form::text('email',$user->email, ['class'=>'form-control', 'required']); !!}
                                    </div>
                                </div>

                                {!! Form::submit('Update', ['class'=>'btn btn-primary pull-right']); !!}
                            {!! Form::close() !!}    
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection