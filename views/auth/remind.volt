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
                        <div class="card-title">{{ translation._('title-password-reminder') }}</div>
                        <div class="form-group">
                            <label class="form-label">{{ translation.setPage()._('field-email') }}</label>
                            {{ form.render('email') }}
                        </div>

                        {{ form.render('g-recaptcha-response') }}

                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">
                                {{ translation._('button-remind-me') }}
                            </button>
                        </div>
                    </div>
                {{ end_form() }}

                <div class="text-center text-muted">
                    {{ translation._('text-go-back-to') }}
                    <a href="{{ url('/user/auth') }}">
                        {{ translation._('link-login') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
