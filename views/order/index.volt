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
                                <th class="text-center">{{ page_translation._('table-order-id') }}</th>
                                <th class="text-center">{{ page_translation._('table-quantities') }}</th>
                                <th class="text-center">{{ page_translation._('table-total-price') }}</th>
                                <th class="text-center">{{ page_translation._('table-date') }}</th>
                                <th class="text-center">{{ default_translation._('table-action') }}</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for grouped in groupedOrders %}
                                {% set orderID        = grouped['orderID'] %}
                                {% set detailsElement = 'order-details-' ~ orderID %}

                                <tr>
                                    <td class="text-center">
                                        <div>{{ grouped['orderID'] }}</div>
                                    </td>
                                    <td class="text-center">
                                        <div>{{ grouped['totalQuantities'] }}</div>
                                    </td>
                                    <td class="text-center">
                                        <div>{{ grouped['totalPrice'] }} &euro;</div>
                                    </td>
                                    <td class="text-center">
                                        <div>{{ grouped['createdAt'] }}</div>
                                    </td>
                                    <td class="text-center">
                                        <a href="{{ orderRoute ~ grouped['hashCode'] }}" class="btn btn-secondary">
                                            <i class="dropdown-icon fe fe-book"></i>
                                            {{ page_translation._('link-view-invoice') }}
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="javascript:void(0)" class="trigger-element" target-element="{{ detailsElement }}">
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                    </td>
                                </tr>
                                {% for item in grouped['items'] %}
                                    <tr class="{{ detailsElement }} d-none">
                                        <td class="text-center">
                                            {{ default_translation._('product-' ~ item['productID']) }}
                                        </td>
                                        <td class="text-center">
                                            {{ item['quantity'] }}
                                        </td>
                                        <td class="text-center">
                                            {{ item['price'] }} &euro;
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                {% endfor %}
                            {% endfor %}
                            {% if groupedOrders|length == 0 %}
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
