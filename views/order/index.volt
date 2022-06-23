{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ page_translation._('title-orders-history') }}
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <thead>
                            <tr>
                                <th class="text-center">{{ page_translation._('table-product') }}</th>
                                <th class="text-center">{{ page_translation._('table-quantity') }}</th>
                                <th class="text-center">{{ page_translation._('table-price') }}</th>
                                <th class="text-center">{{ page_translation._('table-date') }}</th>
                                <th class="text-center">{{ default_translation._('table-action') }}</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for order in orders.getItems() %}
                                {% set orderID        = order['id'] %}
                                {% set detailsElement = 'order-details-' ~ orderID %}

                                <tr>
                                    <td class="text-center">
                                        <div>
                                            {{ default_translation._('product-' ~ order['productID']) }}
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        <div>{{ order['quantity'] }}</div>
                                    </td>
                                    <td class="text-center">
                                        <div>{{ order['price'] }} &euro;</div>
                                    </td>
                                    <td class="text-center">
                                        <div></div>
                                    </td>
                                    <td class="text-center">
                                        <a href="{{ viewRoute ~ order['hashCode'] }}" class="btn btn-secondary">
                                            <i class="dropdown-icon fe fe-book"></i>
                                            {{ page_translation._('link-view-invoice') }}
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="#" class="trigger-element" target-element="{{ detailsElement }}">
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr class="{{ detailsElement }} d-none">
                                    <td colspan="6">teste</td>
                                </tr>
                            {% endfor %}
                            {% if orders|length == 0 %}
                                <tr>
                                    <td colspan="6">{{ page_translation._('text-no-orders') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
                {{ 
                    partial('partials/pagination',   [
                        'page': orders,
                        'limit': orders.getLimit(),
                        'translator': default_translation
                    ])
                }}
            </div>
        </div>
    </div>
</div>
