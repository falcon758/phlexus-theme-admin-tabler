{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ page_translation._('title-payments') }}
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
                                <th>{{ page_translation._('table-due-days') }}</th>
                                <th>{{ page_translation._('table-due-date') }}</th>
                                <th>{{ page_translation._('table-cancelation-days') }}</th>
                                <th>{{ page_translation._('table-cancelation-date') }}</th>
                                <th>{{ default_translation._('table-action') }}</th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for payment in payments %}
                                {% set paymentID = payment['paymentID'] %}
                                <tr record-id="{{ paymentID }}">
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
                                        <div>{{ payment['due_days'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ payment['due_date'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ payment['cancelation_days'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ payment['cancelation_date'] }}</div>
                                    </td>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="{{ payRoute ~ payment['hashCode'] }}" class="dropdown-item pay-item" pay-route="">
                                                    <i class="dropdown-icon fe fe-credit-card"></i>
                                                    {{ page_translation._('link-pay') }}
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if payments|length == 0 %}
                                <tr>
                                    <td colspan="8">{{ page_translation._('text-no-payments') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
