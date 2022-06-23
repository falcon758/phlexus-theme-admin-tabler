{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ page_translation._('title-payments-history') }}
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
                            {% for payment in payments.getItems() %}
                                <tr>
                                    <td>
                                        <div>
                                            {{ default_translation._('product-' ~ payment['productID']) }}
                                        </div>
                                    </td>
                                    <td>
                                        <div>{{ payment['quantity'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ payment['price'] }} &euro;</div>
                                    </td>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="{{ viewRoute ~ payment['hashCode'] }}" class="dropdown-item pay-item" pay-route="">
                                                    <i class="dropdown-icon fe fe-credit-card"></i>
                                                    {{ page_translation._('link-view-order') }}
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if payments|length == 0 %}
                                <tr>
                                    <td colspan="4">{{ page_translation._('text-no-payments') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
                {{ 
                    partial('partials/pagination',   [
                        'page': payments,
                        'limit': payments.getLimit(),
                        'translator': default_translation
                    ])
                }}
            </div>
        </div>
    </div>
</div>
