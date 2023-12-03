{% set maxPages    = 10 %}
{% set splitPages  = maxPages / 2 %}
{% set currentPage = page.current  %}
{% set lastPage    = page.last %}
{% set start       = (limit * (currentPage - 1)) + 1 %}
{% set end         = (limit * (currentPage - 1)) + limit %}
{% set totalItems  = page.total_items %}
{% set totalPages  = lastPage > 1 ? lastPage : 1 %}

{% set startFrom   = currentPage > splitPages ? currentPage - splitPages : 1 %}
{% set endOn       = startFrom + maxPages > lastPage ? lastPage : startFrom + maxPages %}

{% if startFrom + maxPages > endOn %}
    {% set startFrom  = endOn - maxPages %}
{% endif %}

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
            {% if currentPage > 1 %}
                <li>
                    <a class="paginate btn btn-secondary" page-target="1">&laquo;</a>
                </li>
            {% endif %}

            {% for i in startFrom..endOn %}
                <li>
                    <a class="paginate btn 
                    {% if i == currentPage %} 
                        btn-primary active
                    {% else %} 
                        btn-secondary 
                    {% endif %}" 
                    page-target="{{ i }}">
                        {{ i }}
                    </a>
                </li>
            {% endfor %}

            {% if currentPage < lastPage %}
                <li>
                    <a class="paginate btn btn-secondary" page-target="{{ lastPage }}">&raquo;</a>
                </li>
            {% endif %}
            </ul>
        </div>

        {% if limit %}
            <div class="col-2 mt-auto">
                {{ translator._('paginator-showing') }} {{ start }} - {{ end }} {{ translator._('paginator-of') }} {{ totalItems }}
            </div>
        {% endif %}
    </div>
</div>
