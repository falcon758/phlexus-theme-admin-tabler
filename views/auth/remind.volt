<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>
                {{ form('/user/auth/doRemind', 'method': 'post', 'class': 'card') }}
                    {{ form.render('csrf') }}
                    
                    <div class="card-body p-6">
                        <div class="card-title">Password Reminder</div>
                        <div class="form-group">
                            <label class="form-label">Email address</label>
                            {{ form.render('email') }}
                        </div>
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">Remind Me</button>
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
