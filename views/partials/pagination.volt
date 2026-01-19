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

<div class="container-xl">
    <div class="row">
        <div class="col-12 col-lg-8">
            <ul class="pagination justify-content-center justify-content-lg-start mb-0">
                {% if currentPage > 1 %}
                    <li class="page-item">
                        <a class="paginate page-link" href="javascript:void(0)" page-target="1" aria-label="First">&laquo;</a>
                    </li>
                {% endif %}

                {% for i in startFrom..endOn %}
                    <li class="page-item {{ i == currentPage ? 'active' : '' }}">
                        <a class="paginate page-link" href="javascript:void(0)" page-target="{{ i }}">{{ i }}</a>
                    </li>
                {% endfor %}

                {% if currentPage < lastPage %}
                    <li class="page-item">
                        <a class="paginate page-link" href="javascript:void(0)" page-target="{{ lastPage }}" aria-label="Last">&raquo;</a>
                    </li>
                {% endif %}
            </ul>
        </div>

        {% if limit %}
            <div class="col-12 col-lg-4 mt-2 mt-lg-0 text-muted text-center text-lg-right">
                <small>
                    {{ translator._('paginator-showing') }} {{ start }} - {{ end }} {{ translator._('paginator-of') }} {{ totalItems }}
                </small>
            </div>
        {% endif %}
    </div>
</div>
