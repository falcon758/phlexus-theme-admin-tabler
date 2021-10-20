<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            Products
        </h1>
    </div>

    <div class="row row-cards"  csrf-token="{{ csrfToken }}">
        {% for product in products %}
            {% set productId = product['id'] %}
            <div class="col-6 col-sm-4 col-lg-2" product-id="{{ productId }}">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">{{ product['name'] }}</h3>
                    </div>
                    <div class="card-body p-3 text-center">
                        <div class="h3 mt-auto">Product Image</div>
                        <div class="text-muted mb-4">
                            <a href="#" class="btn btn-outline-primary">Buy</a>
                        </div>
                    </div>
                </div>
            </div>
        {% endfor %}
        {% if products|length == 0 %}
            <div class="col-12 col-sm-12 col-lg-12">
                No products found
            </div>
        {% endif %}
    </div>
</div>