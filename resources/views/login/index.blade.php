@extends('layouts.login')

@section('title', 'Đăng nhập hệ thống')

@section('content')
    <!-- BEGIN LOGO -->
    <div class="logo">
       
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content" style="margin-top: 0px;">
        <!-- BEGIN LOGIN FORM -->
        <form class="login-form" action="{{ route('login.post') }}" method="post">
            @csrf()
            <h3 class="form-title font-green">Đăng Nhập</h3>
            @if($errors->any())
            <div class="alert alert-danger">
                <button class="close" data-close="alert"></button>
                @foreach($errors->all() as $error)
                    <p> {{ $error }} </p>
                @endforeach
            </div>
            @endif
            
            <!-- MESSAGE -->
            @include('partials.flash-message')

            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Email</label>
                <input value="" class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Mật khẩu</label>
                <input value="" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Mật khẩu" name="password" /> </div>
            <div class="form-group">
                <button type="submit" class="btn green uppercase">Đăng nhập</button>
              
            </div>
        </form>
        <!-- <table class="table">
            <thead>
            <tr>
                <th>Email</th>
                <th>Mật khẩu</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>superadministrator@app.com</td>
                <td>password</td>
                <td><a class="copy-account" href="#" data-account="superadministrator@app.com" data-password="password">copy</a></td>
            </tr>
            <tr>
                <td>administrator@app.com</td>
                <td>password</td>
                <td><a class="copy-account" href="#" data-account="administrator@app.com" data-password="password">copy</a></td>
            </tr>
            <tr>
                <td>user@app.com</td>
                <td>password</td>
                <td><a class="copy-account" href="#" data-account="user@app.com" data-password="password">copy</a></td>
            </tr>
            </tbody>
        </table> -->
        <!-- END LOGIN FORM -->
    </div>
    
    <!--[if lt IE 9]>
    <script src="../assets/global/plugins/respond.min.js"></script>
    <script src="../assets/global/plugins/excanvas.min.js"></script> 
    <script src="../assets/global/plugins/ie8.fix.min.js"></script> 
    <![endif]-->
@endsection

<!-- @section('script')
    <script>
        $(document).ready(function()
        {
            $('.copy-account').on('click', function(e){
                e.preventDefault();
                var $account = $(this).data('account');
                var $password = $(this).data('password');
                // console.log($account + $password);
                $('.login-form input[name="email"]').val($account);
                $('.login-form input[name="password"]').val($password);
            });
        });
    </script> -->
@endsection()