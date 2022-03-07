{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="row row-cards">
        <div class="col-12">

            {{ form(saveRoute, 'class': 'card', 'enctype' : 'multipart/form-data') }}
                <div class="card-header">
                    <h4 class="card-title">{{ default_translation._('title-edit') }}</h4>
                </div>

                {{ form.render('csrf') }}

                <div class="card-body">
                    {% for field in form.getFields() %}
                        {% set field_name = field['name'] %}
                        {% set field_translation = default_translation._('field-' ~ field_name) %}

                        <div class="row">
                            <div class="col-md-6 col-xl-12">
                                <div class="form-field">
                                    {% if field['type'] !== 'Phalcon\Forms\Element\Hidden' %}
                                        <label class="form-label" for="{{ field_translation}}">
                                            {{ field_translation }}
                                        </label>
                                    {% endif  %}
                                    
                                    {{ form.render(field_name, ['class': 'form-control']) }}
                                </div>
                            </div>
                        </div>
                    {% endfor %}
                </div>

                <div class="card-footer text-end">
                    <div class="d-flex">
                        <a href="{{ url(defaultRoute) }}" class="btn btn-link">
                            {{ default_translation._('link-cancel') }}
                        </a>

                        {{ submit_button(default_translation._('button-save')) }}
                    </div>
                </div>
            {{ end_form() }}

        </div>
    </div>
</div>