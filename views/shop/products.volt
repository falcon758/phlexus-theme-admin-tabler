<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ translation._('title-products') }}
        </h1>
    </div>

    <div class="row row-cards" csrf-token="{{ csrfToken }}">
        {% for product in products %}
            {% set productID = product['id'] %}

            <div class="col-6 col-sm-4 col-lg-2 product" product-id="{{ productID }}">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            {{ translation._('product-' ~ product['id']) }}
                        </h3>
                    </div>

                    <div class="card-body p-3 text-center">
                        <div class="h3 mt-auto">
                            {{ translation._('product-image') }}
                        </div>

                        <div class="mb-4">
                            <btn class="btn btn-outline-primary product-buy"  buy-route="{{ saveRoute ~ productID }}">
                                {{ translation._('button-buy') }}
                            </btn>
                        </div>
                    </div>
                </div>
            </div>
        {% endfor %}

        {% if products|length == 0 %}
            <div class="col-12 col-sm-12 col-lg-12">
                {{ translation._('text-no-products') }}
            </div>
        {% endif %}
    </div>
</div>