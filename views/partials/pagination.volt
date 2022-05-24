{% set currentPage = ((request.getQuery()['_url'] is defined) ? request.get()['_url'] : '/') %}
{% set getParams   = request.get() %}
{% set start       = (limit * (page.current - 1)) + 1 %}
{% set end         = (limit * (page.current - 1)) + limit %}
{% set totalItems  = page.total_items %}
{% set totalPages  = page.last > 1 ? page.last : 1 %}
{% if end > totalItems %}
  {% set end = totalItems%}
{% endif %}

{%- macro pagination_url(url, page) %}
    {% autoescape true %}
        {{ url }}?<?php
            $params = $this->request->getQuery();
            unset($params['_url']);
            echo http_build_query(array_merge($params, ['p' => $page]));
        ?>
     {% endautoescape %}
{% endmacro %}

<div class="container">
    <div class="row">
        <div class="col-10">
            <ul class="pagination">
            {% if page.current > 1 %}
                <li>
                    <a href="{{ pagination_url(currentPage, 1) }}">&laquo;</a>
                </li>
            {% endif %}

            {% for i in 1..totalPages %}
                <li>
                    <a class="btn 
                    {% if i == page.current %} 
                        btn-primary active 
                    {% else %} 
                        btn-secondary 
                    {% endif %}" 
                    href="{{ pagination_url(currentPage, i) }}">
                        {{ i }}
                    </a>
                </li>
            {% endfor %}

            {% if page.current < page.last %}
                <li><a href="{{ pagination_url(currentPage, page.last) }}">&raquo;</a></li>
            {% endif %}
            </ul>
        </div>

        {% if limit %}
            <div class="col-2">
                Showing {{ start }} - {{ end  }} of {{ totalItems }}
            </div>
        {% endif %}
    </div>
</div>
