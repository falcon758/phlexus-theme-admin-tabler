{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>

                {{ formLegacy(['action': '/user/auth/doLogin', 'method': 'post', 'class': 'card']) }}
                    {{ form.render('csrf') }}

                    <div class="card-body p-6">
                        <div class="card-title">{{ page_translation._('title-login') }}</div>

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
                                    {{ page_translation._('link-forgot-password') }}
                                </a>
                            </label>

                            {{ form.render('password') }}
                        </div>

                        <div class="form-group">
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" />

                                <span class="custom-control-label">
                                    {{ page_translation._('link-remember-me') }}
                                </span>
                            </label>
                        </div>

                        {{ form.render('g-recaptcha-response') }}
                        
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">
                                {{ page_translation._('button-sign-in') }}
                            </button>
                        </div>
                    </div>
                {{ end_form() }}

                <div class="text-center text-muted">
                    {{ page_translation._('text-create-account') }}

                    <a href="{{ url('/user/auth/create') }}">
                        {{ page_translation._('link-sign-up') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
