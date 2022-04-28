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
                                <th>{{ page_translation._('table-due-date') }}</th>
                                <th>{{ default_translation._('table-action') }}</th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for payment in payments %}
                                {% set paymentID = payment.id %}
                                <tr record-id="{{ paymentID }}">
                                    <td>
                                        <div>
                                            {{ default_translation._('product-' ~ payment.id) }}
                                        </div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ '/payment/pay/' ~ paymentID }}">
                                                    <i class="dropdown-icon fe fe-trash"></i>
                                                    {{ page_translation._('link-pay') }}
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if payments|length == 0 %}
                                <tr>
                                    <td colspan="5">{{ page_translation._('text-no-payments') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
