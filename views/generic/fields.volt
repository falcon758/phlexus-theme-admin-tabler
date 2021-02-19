{%- macro input(name, value) %}
    <input type="text" name="{{ name }}" value="{{ value }}">
{%- endmacro %}

{%- macro textarea(name, value) %}
    <textarea name="{{ name }}">{{ value }}</textarea>
{% endmacro %}

{%- macro select(name, value) %}
    <select name="{{ name }}">
        <option value="{{ value }}">{{ value }}</option>
    </select>
{% endmacro %}

{%- macro checkbox(name, value) %}
    <input type="checkbox" name="{{ name }}" value="{{ value }}">
{% endmacro %}