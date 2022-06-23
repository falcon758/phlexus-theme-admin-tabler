{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ page_translation._('title-cart') }}
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <thead>
                            <tr>
                                <th>{{ page_translation._('table-product') }}</th>
                                <th>{{ page_translation._('table-quantity') }}</th>
                                <th>{{ page_translation._('table-price') }}</th>
                                <th>{{ default_translation._('table-action') }}</th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for product in products %}
                                {% set productID = product['id'] %}
                                <tr>
                                    <td>
                                        <div>
                                            {{ default_translation._('product-' ~ product['id']) }}
                                        </div>
                                    </td>
                                    <td>
                                        <div>{{ product['quantity'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ product['price'] }} &euro;</div>
                                    </td>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ '/cart/delete/' ~ productID }}">
                                                    <i class="dropdown-icon fe fe-trash"></i>
                                                    {{ default_translation._('link-delete') }}
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if products|length == 0 %}
                                <tr>
                                    <td colspan="4">{{ page_translation._('text-no-products') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
                {% if products|length > 0 %}
                    <a class="btn btn-outline-primary product-buy" href="{{ checkoutRoute }}">
                        {{ page_translation._('link-checkout') }}
                    </a>
                {% endif %}
            </div>
        </div>
    </div>
</div>
