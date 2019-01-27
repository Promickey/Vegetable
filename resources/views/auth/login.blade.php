@extends('users.layouts.master')

@section('banner_right')

        <div class="w3_login">
            <h3>Sign In</h3>
            <div class="w3_login_module">
                <div class="module form-module">
                    <div class="toggle"></div>
                    <div class="form">
                    <h2>Login to your account</h2>

                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        @if(session()->get('success'))
                        <div class="alert alert-success">
                            <h5>{{session()->get('success')}}</h5>
                        </div>
                        @endif
                        @if(session()->get('status'))
                        <div class="alert alert-success">
                            <h5>{{session()->get('status')}}</h5>
                        </div>
                        @endif
                        @if(session()->get('danger'))
                        <div class="alert alert-danger">
                            <h5>{{session()->get('danger')}}</h5>
                        </div>
                        @endif

                        <div class="form-group row">
                            <label for="email" class="col-sm-4 col-form-label ">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-8">
                                <input type="email" name="email" placeholder="Email" required=" " value="{{ old('email') }}">

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label ">{{ __('Password') }}</label>

                            <div class="col-md-8">
                                <input type="password" name="password" placeholder="Password" required=" ">

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 ">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
<!-- //login -->
@endsection
