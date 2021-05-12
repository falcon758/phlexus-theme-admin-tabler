<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>
                {{ form('/user/auth/doRecover', 'method': 'post', 'class': 'card') }}
                    {{ form.render('csrf') }}
                    {{ form.render('hash_code') }}

                    <div class="card-body p-6">
                        <div class="card-title">Password Recover</div>
                        <div class="form-group">
                            <label class="form-label">Password</label>
                            {{ form.render('password') }}
                        </div>
                        <div class="form-group">
                            <label class="form-label">Repeat Password</label>
                            {{ form.render('repeat_password') }}
                        </div>
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">Change Password</button>
                        </div>
                    </div>
                {{ end_form() }}
                <div class="text-center text-muted">
                    Go back to <a href="{{ url('/user/auth') }}">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>
