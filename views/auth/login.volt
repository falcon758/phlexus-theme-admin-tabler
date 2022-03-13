{% set default_translation = translation.setPage() %}

<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>

                {{ form('/user/auth/doLogin', 'method': 'post', 'class': 'card') }}
                    {{ form.render('csrf') }}

                    <div class="card-body p-6">
                        <div class="card-title">{{ translation._('title-login') }}</div>

                        <div class="form-group">
                            <label class="form-label">
                                {{ default_translation._('field-email-address') }}
                            </label>

                            {{ form.render('email') }}
                        </div>

                        <div class="form-group">
                            <label class="form-label">
                                {{ default_translation._('field-password') }}

                                <a href="{{ url('/user/auth/remind') }}" class="float-right small">
                                    {{ translation._('link-forgot-password') }}
                                </a>
                            </label>

                            {{ form.render('password') }}
                        </div>

                        <div class="form-group">
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" />

                                <span class="custom-control-label">
                                    {{ translation._('link-remember-me') }}
                                </span>
                            </label>
                        </div>

                        {{ form.render('g-recaptcha-response') }}
                        
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">
                                {{ translation._('button-sign-in') }}
                            </button>
                        </div>
                    </div>
                {{ end_form() }}

                <div class="text-center text-muted">
                    {{ translation._('text-create-account') }}

                    <a href="{{ url('/user/auth/create') }}">
                        {{ translation._('link-sign-up') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
