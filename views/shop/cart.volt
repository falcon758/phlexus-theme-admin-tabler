<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            Cart
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for product in products %}
                                {% set productID = product['id'] %}
                                <tr record-id="{{ productID }}">
                                    <td>
                                        <div>{{ product['name'] }}</div>
                                    </td>
                                    <td>
                                        <div>{{ product['quantity'] }}</div>
                                    </td>
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ '/cart/delete/' ~ productID }}">
                                                    <i class="dropdown-icon fe fe-trash"></i> Delete
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if products|length == 0 %}
                                <tr>
                                    <td colspan="3">No products found</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
                {% if products|length > 0 %}
                    <a class="btn btn-outline-primary product-buy" href="{{ checkoutRoute }}">Checkout</a>
                {% endif %}
            </div>
        </div>
    </div>
</div>
