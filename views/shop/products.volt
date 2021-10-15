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
                                        Buy
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
