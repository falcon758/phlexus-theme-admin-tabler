{% set flashTypes = {'success': 'success', 'warning': 'warning', 'error': 'danger'} %}

<div id="flash-messages">
    <div class="container-xl">
        {% for type, class in flashTypes %}

            {% if flash.has(type) %}
                <div class="alert alert-{{ class }} alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>

                    {% if class == 'success' %}
                        <i class="fe fe-check-circle mr-2"></i>
                    {% elseif class == 'warning' %}
                        <i class="fe fe-alert-triangle mr-2"></i>
                    {% else %}
                        <i class="fe fe-x-circle mr-2"></i>
                    {% endif %}

                    {% for message in flash.getMessages(type) %}
                        {{ flash.outputMessage(type, message) }}
                    {% endfor %}
                </div>
            {% endif %}

        {% endfor %}
    </div>
</div>