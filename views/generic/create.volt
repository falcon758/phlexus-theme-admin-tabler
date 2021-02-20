<form action="" method="post">
    {% for field in form.getFields() %}
        <div class="form-field">
            <label for="{{ field.name }}">{{ field.name }}</label>
            {{ form.render(field.name) }}
        </div>
    {% endfor %}
</form>