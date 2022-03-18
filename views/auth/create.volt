{% set page_translation = translation.setType().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col col-login mx-auto">
                <div class="text-center mb-6">
                    <img src="{{ assetsPath() ~ 'images/logo/phlexus.svg' }}" class="h-6" alt="">
                </div>

                {{ form('/user/auth/doCreate', 'method': 'post', 'class': 'card') }}
                    {{ form.render('csrf') }}
                    
                    <div class="card-body p-6">
                        <div class="card-title">{{ page_translation._('title-register') }}</div>

                        <div class="form-group">
                            <label class="form-label">{{ default_translation._('field-email-address') }}</label>
                            {{ form.render('email') }}
                        </div>

                        <div class="form-group">
                            <label class="form-label">{{ default_translation._('field-password') }}</label>
                            {{ form.render('password') }}
                        </div>

                        <div class="form-group">
                            <label class="form-label">{{ default_translation._('field-repeate-password') }}</label>
                            {{ form.render('repeat_password') }}
                        </div>

                        {{ form.render('g-recaptcha-response') }}

                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">
                                {{ page_translation._('button-register') }}
                            </button>
                        </div>
                    </div>
                {{ end_form() }}

                <div class="text-center text-muted">
                    {{ page_translation._('text-go-back-to') }}
                    <a href="{{ url('/user/auth') }}">
                        {{ page_translation._('link-login') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
