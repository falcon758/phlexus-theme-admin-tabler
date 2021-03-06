
{{
    form('user/users/save')
}}
    {{ form.render(security.getTokenKey()) }}

    {% for field in form.getFields() %}
        <div class="form-field">
            <label for="{{ field['name'] }}">{{ field['name'] }}</label>
            {{ form.render(field['name']) }}
        </div>
    {% endfor %}

    {{ submit_button('Save') }}

{{ end_form() }}