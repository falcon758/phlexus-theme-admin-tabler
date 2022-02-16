<div class="container">
    <div class="row row-cards">
        <div class="col-12">
            {{ form(saveRoute, 'class': 'card') }}
            
                <div class="card-header">
                    <h4 class="card-title">{{ translationPage._('title-edit') }}</h4>
                </div>

                {{ form.render('csrf') }}

                <div class="card-body">
                    {% for field in form.getFields() %}
                        {% set field_name = field['name'] %}
                        <div class="row">
                            <div class="col-md-6 col-xl-12">
                                <div class="form-field">
                                    {% if field['type'] !== 'Phalcon\Forms\Element\Hidden' %}
                                        <label class="form-label" for="{{ field_name}}">{{ translationPage._('field-' ~ field_name) }}</label>
                                    {% endif  %}
                                    
                                    {{ form.render(field_name, ['class': 'form-control']) }}
                                </div>
                            </div>
                        </div>
                    {% endfor %}
                </div>

                <div class="card-footer text-end">
                    <div class="d-flex">
                        <a href="{{ url(defaultRoute) }}" class="btn btn-link">{{ translationPage._('link-cancel') }}</a>
                        {{ submit_button(translationPage._('button-save')) }}
                    </div>
                </div>

            {{ end_form() }}
        </div>
    </div>
</div>