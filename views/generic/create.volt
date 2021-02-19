{% include 'generic/fields.volt' %}

{% for field in fields %}
    <div>
        <span>
            <label for="{{ field.name }}">{{ field.name }}</label>
        </span>

        {{ input(field.name, '') }}
    </div>
{% endfor %}


