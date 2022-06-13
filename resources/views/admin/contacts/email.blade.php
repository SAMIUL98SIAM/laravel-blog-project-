@extends('layouts.admin.app')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">{{$userEmail->name}}'s Message</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.contacts.index') }}">Message list</a></li>
                    <li class="breadcrumb-item active">Message</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <form action="{{ route('admin.contacts.email.send',$userEmail->id) }}" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            @include('includes.errors')
                            @csrf
                            @isset($user)
                                @method('PUT')
                            @endisset
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="name">Greeting</label>
                                    <input id="greeting" type="text" class="form-control @error('greeting') is-invalid @enderror" name="greeting"  autofocus required>
                                    @error('greeting')
                                    <p class="p-2">
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    </p>
                                    @enderror
                                </div>


                                <div class="form-group">
                                    <label for="body">Body</label>
                                    <input id="body" type="text" class="form-control @error('body') is-invalid @enderror" name="body" autofocus required>
                                    @error('body')
                                    <p class="p-2">
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    </p>
                                    @enderror
                                </div>


                                <div class="form-group">
                                    <label for="actiontext">Action Text</label>
                                    <input id="actiontext" type="text" class="form-control @error('actiontext') is-invalid @enderror" name="actiontext" autofocus required>
                                    @error('actiontext')
                                    <p class="p-2">
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    </p>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label for="actionurl">Action Url</label>
                                    <input id="actionurl" type="text" class="form-control @error('actionurl') is-invalid @enderror" name="actionurl" autofocus required>
                                    @error('actionurl')
                                    <p class="p-2">
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    </p>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label for="endpart">End Part</label>
                                    <input id="endpart" type="text" class="form-control @error('endpart') is-invalid @enderror" name="endpart" autofocus required>
                                    @error('endpart')
                                    <p class="p-2">
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    </p>
                                    @enderror
                                </div>

                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-lg btn-primary">Send Mail</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
