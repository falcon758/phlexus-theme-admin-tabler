{% set flashTypes = {'success': 'success', 'warning': 'warning', 'error': 'danger'} %}

<div id="flash-messages">
    {% for type, class in flashTypes %}

        {% if flash.has(type) %}
            <div class="alert alert-{{ class }}">
                {% for message in flash.getMessages(type) %}
                    {{ flash.outputMessage(type, message) }}
                {% endfor %}
            </div>
        {% endif %}

    {% endfor %}
</div>