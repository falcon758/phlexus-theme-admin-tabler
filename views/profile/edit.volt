{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<script type="text/javascript">
    require(['profile']);
</script>

<div class="container">
    <div class="row row-cards">
        <div class="col-12">

            {{ formLegacy(['action': 'profile/save', 'class': 'card', 'enctype' : 'multipart/form-data']) }}
                {{ form.render('csrf') }}

                <div class="card-header">
                    <h4 class="card-title">{{ page_translation._('profile-edit') }}</h4>
                </div>

                <div class="card-body">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="email-address">{{ default_translation._('field-email-address') }}</label>
                                
                                {{ form.render('email', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="field-old-password">{{ default_translation._('field-old-password') }}</label>
                                
                                {{ form.render('old_password', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="field-password">{{ default_translation._('field-password') }}</label>
                                
                                {{ form.render('password', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="repeat-password">{{ default_translation._('field-repeat-password') }}</label>
                                
                                {{ form.render('repeat_password', ['class': 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="form-field">
                                <label class="form-label" for="profile-image">{{ default_translation._('field-profile-image') }}</label>
                                
                                {{ form.render('profile_image', ['class': 'form-control']) }}
                            </div>
                        </div>
                    </div>

                    {{ form.render('g-recaptcha-response') }}
                </div>

                <div class="card-footer text-end">
                    <div class="d-flex">
                        <a href="{{ url(defaultRoute) }}" class="btn btn-link">{{ default_translation._('link-cancel') }}</a>
                        {{ submit_button(default_translation._('button-save')) }}
                    </div>

                    <hr/>

                    <h4>{{ page_translation._('profile-danger-zone') }}</h4>

                    <div class="col-xl-12">
                        <button id="account-removal" delete-route="{{ url('/profile/requestRemoval') }}" csrf-token="{{ accountRemovalToken }}" type="button" class="btn btn-danger">{{ default_translation._('link-request-account-removal') }}</button>
                    </div>
                </div>
            {{ end_form() }}

        </div>
    </div>
</div>
