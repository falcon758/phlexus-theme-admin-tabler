{% set start       = (limit * (page.current - 1)) + 1 %}
{% set end         = (limit * (page.current - 1)) + limit %}
{% set totalItems  = page.total_items %}
{% set totalPages  = page.last > 1 ? page.last : 1 %}

{% if start > totalItems %}
  {% set start = 0 %}
{% endif %}

{% if end > totalItems %}
  {% set end = totalItems %}
{% endif %}

<div class="container">
    <div class="row">
        <div class="col-10 mt-auto">
            <ul class="pagination">
            {% if page.current > 1 %}
                <li>
                    <a class="paginate btn btn-secondary" page-target="1">&laquo;</a>
                </li>
            {% endif %}

            {% for i in 1..totalPages %}
                <li>
                    <a class="paginate btn 
                    {% if i == page.current %} 
                        btn-primary active
                    {% else %} 
                        btn-secondary 
                    {% endif %}" 
                    page-target="{{ i }}">
                        {{ i }}
                    </a>
                </li>
            {% endfor %}

            {% if page.current < page.last %}
                <li>
                    <a class="paginate btn btn-secondary" page-target="{{ page.last }}">&raquo;</a>
                </li>
            {% endif %}
            </ul>
        </div>

        {% if limit %}
            <div class="col-2 mt-auto">
                {{ translator._('paginator-showing') }} {{ start }} - {{ end  }} {{ translator._('paginator-of') }} {{ totalItems }}
            </div>
        {% endif %}
    </div>
</div>
