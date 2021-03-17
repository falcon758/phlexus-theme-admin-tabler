<div class="col mx-auto">
    <div class="row row-cards">
        <div class="col-12">
            {{ form(saveRoute, 'class': 'card') }}
            
                <div class="card-header">
                    <h4 class="card-title">Edit</h4>
                </div>

                {{ form.render(security.getTokenKey()) }}

                <div class="card-body">
                    {% for field in form.getFields() %}
                        <div class="row">
                            <div class="col-md-6 col-xl-12">
                                <div class="form-field">
                                    {% if field['type'] !== 'Phalcon\Forms\Element\Hidden' %}
                                        <label class="form-label" for="{{ field['name'] }}">{{ field['name'] }}</label>
                                    {% endif  %}
                                    
                                    {{ form.render(field['name'], ['class': 'form-control']) }}
                                </div>
                            </div>
                        </div>
                    {% endfor %}
                </div>

                <div class="card-footer text-end">
                    <div class="d-flex">
                        <a href="{{ url(defaultRoute) }}" class="btn btn-link">Cancel</a>
                        {{ submit_button('Save') }}
                    </div>
                </div>

            {{ end_form() }}
        </div>
    </div>
</div>