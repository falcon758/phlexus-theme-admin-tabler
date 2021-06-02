<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>
                {{ form('/user/auth/doLogin', 'method': 'post', 'class': 'card') }}
                    {{ form.render('csrf') }}
                    {{ form.render('captcha') }}

                    <div class="card-body p-6">
                        <div class="card-title">Login to your account</div>
                        <div class="form-group">
                            <label class="form-label">Email address</label>
                            {{ form.render('email') }}
                        </div>
                        <div class="form-group">
                            <label class="form-label">
                                Password
                                <a href="{{ url('/user/auth/remind') }}" class="float-right small">I forgot password</a>
                            </label>
                            {{ form.render('password') }}
                        </div>
                        <div class="form-group">
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" />
                                <span class="custom-control-label">Remember me</span>
                            </label>
                        </div>
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                        </div>
                    </div>
                {{ end_form() }}
                <div class="text-center text-muted">
                    Don't have account yet? <a href="{{ url('/user/auth/create') }}">Sign up</a>
                </div>
            </div>
        </div>
    </div>
</div>
