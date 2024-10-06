{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPageType() %}

<script type="text/javascript">
    require(['products']);
</script>

<div class="container">
    <div class="row row-cards" csrf-token="{{ csrfToken }}">
        {% for product in products %}
            {% set productID = product.id %}

            <div class="col-lg-4 product" product-id="{{ productID }}">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            {% set productNameID  = 'product-' ~ productID %}
                            {% set productName  = default_translation._(productNameID) %}
                            
                            {% if productName === productNameID %}
                                {{ product.name }}
                            {% else %}
                                {{ productName }}
                            {% endif %}
                        </h3>
                    </div>

                    <div class="card-body p-3 text-center">
                        {% if product.media.mediaName is defined %}
                            <div class="h3 mt-auto">
                                <img src="/assets/{{ imagesDir }}/{{ product.media.mediaName }}" />
                            </div>
                        {% endif %}

                        <div class="mb-4">
                            {{ default_translation._('product-description' ~ productID) }}
                        </div>

                        <div class="h4 mt-auto">
                            {{ product.price }} &euro;
                        </div>

                        <div class="mb-4">
                            <btn class="btn btn-outline-primary product-buy" buy-route="{{ addRoute ~ productID }}">
                                {{ page_translation._('button-buy') }}
                            </btn>
                        </div>
                    </div>
                </div>
            </div>
        {% endfor %}

        {% if products|length == 0 %}
            <div class="col-12 col-sm-12 col-lg-12">
                {{ page_translation._('text-no-products') }}
            </div>
        {% endif %}
    </div>
</div>
