<div class="container">
    <div class="row row-cards">
        <div class="col-12">
            {{ form('profile/save', 'class': 'card') }}
            
                <div class="card-header">
                    <h4 class="card-title">{{ translation._('profile-edit') }}</h4>
                </div>

                {{ form.render('csrf') }}

                <div class="card-body">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="email-address">{{ translation._('field-email-address') }}</label>
                                
                                {{ form.render('email', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="field-password">{{ translation._('field-password') }}</label>
                                
                                {{ form.render('password', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="repeat-password">{{ translation._('field-repeat-password') }}</label>
                                
                                {{ form.render('repeat_password', ['class': 'form-control']) }}
                            </div>
                        </div>
                    </div>

                    {{ form.render('g-recaptcha-response') }}
                </div>

                <div class="card-footer text-end">
                    <div class="d-flex">
                        <a href="{{ url(defaultRoute) }}" class="btn btn-link">{{ translation._('link-cancel') }}</a>
                        {{ submit_button(translation._('button-save')) }}
                    </div>
                </div>

            {{ end_form() }}
        </div>
    </div>
</div>
