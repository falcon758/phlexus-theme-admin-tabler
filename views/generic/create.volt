
{{ form(saveRoute) }}
    {{ form.render(security.getTokenKey()) }}

    {% for field in form.getFields() %}
        <div class="form-field">
            {% if field['type'] !== 'Phalcon\Forms\Element\Hidden' %}
                <label for="{{ field['name'] }}">{{ field['name'] }}</label>
            {% endif  %}
            
            {{ form.render(field['name']) }}
        </div>
    {% endfor %}

    {{ submit_button('Save') }}

{{ end_form() }}