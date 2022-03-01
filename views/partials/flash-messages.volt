{% set flashTypes = {'success', 'warning', 'error'} %}

<div id="flash-messages">
    {% for type in flashTypes %}

        {% if flash.has(type) %}
            <div class="alert alert-{{ type }}">
                {% for message in flash.getMessages(type) %}
                    {{ flash.outputMessage(type, message) }}
                {% endfor %}
            </div>
        {% endif %}

    {% endfor %}
</div>