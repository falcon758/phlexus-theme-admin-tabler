<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ translation._('title-products') }}
        </h1>
    </div>

    <div class="row row-cards" csrf-token="{{ csrfToken }}">
        {% for product in products %}
            {% set productID = product.id %}

            <div class="col-6 col-sm-4 col-lg-2 product" product-id="{{ productID }}">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            {{ translation._('product-' ~ productID) }}
                        </h3>
                    </div>

                    <div class="card-body p-3 text-center">
                        <div class="h3 mt-auto">
                            <img src="/assets/1/1/f86d580d78446c12ad46c98742f89ea6/{{ product.media.mediaName }}" />
                        </div>

                        <div class="h4 mt-auto">
                            {{ product.price }} &euro;
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