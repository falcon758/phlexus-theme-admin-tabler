{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPageType() %}

<script type="text/javascript">
    require(['checkout']);
</script>

<div class="container-xl">
    <div class="page-header d-print-none">
        <div class="row align-items-center">
            <div class="col">
                <h1 class="page-title">{{ page_translation._('title-checkout') }}</h1>
            </div>
        </div>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12 col-lg-8">

            {{ formLegacy(['action': orderRoute, 'method': 'post', 'class': 'card']) }}
                <div class="card">
                    {{ checkoutForm.render('csrf') }}

                    <div class="card-header">
                        <h3 class="card-title">
                            {{ page_translation._('title-personal-info') }}
                        </h3>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                            <tbody>
                                <tr>
                                    <td>
                                        <div>{{ checkoutForm.render('name') }}</div>
                                    </td>
                                    <td>
                                        <div>{{ checkoutForm.render('tax_number') }}</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    {% for type in addressType %}
                        {% if type == 2 %}
                        <div>
                            <label for="same_address">{{ checkoutForm.getLabel('same_address') }}</label>
                            {{ checkoutForm.render('same_address') }}
                        </div>
                        {% endif %}

                        <div class="card-header">
                            <h3 class="card-title">{{ page_translation._('title-address-' ~ type) }}</h3>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                                <tbody>
                                    <tr>
                                        <td colspan="2">
                                            <div>{{ checkoutForm.render('address_' ~ type) }}</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="col-5">
                                            <div>{{ checkoutForm.render('post_code_' ~ type) }}</div>
                                        </td>
                                        <td>
                                            <div>{{ checkoutForm.render('country_' ~ type) }}</div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    {% endfor %}

                    <div class="card-header">
                        <h3 class="card-title">
                            {{ page_translation._('title-payment-and-shipping') }}
                        </h3>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                            <tbody>
                                <tr>
                                    <td>
                                        <div>{{ checkoutForm.render('payment_method') }}</div>
                                    </td>
                                    <td>
                                        <div>{{ checkoutForm.render('shipping_method') }}</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    {{ checkoutForm.render('g-recaptcha-response') }}
                </div>

                <div class="mt-3 text-right">
                    <button class="btn btn-primary" type="submit">
                        <i class="fe fe-check mr-2"></i>{{ page_translation._('button-order') }}
                    </button>
                </div>
            {{ end_form() }}
        </div>

        <div class="col-12 col-lg-4">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <tbody>

                            {% for product in products %}
                                <tr>
                                    <td>
                                        <div>
                                            {{ default_translation._('product-' ~ product['id']) }}
                                        </div>
                                    </td>
                                    <td>
                                        <div>{{ product['quantity'] }}</div>
                                    </td>
                                </tr>
                            {% endfor %}

                            <tr>
                                <td colspan="2">
                                    <div>{{ page_translation._('text-total-price') }}: {{ total }}</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
