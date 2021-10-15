<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            Products
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for product in products %}
                                {% set productId = product['id'] %}
                                <tr product-id="{{ productId }}">
                                    <td>
                                        <div>{{ product['name'] }}</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <div class="dropdown-divider"></div>
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ url('/cart/delete/' ~ productId) }}">
                                                    <i class="dropdown-icon fe fe-trash"></i> Delete
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if products|length == 0 %}
                                <tr>
                                    <td colspan="2">No products found</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
