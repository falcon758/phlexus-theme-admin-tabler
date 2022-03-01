{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            Cart
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-8">

            {{ form(orderRoute, 'method': 'post', 'class': 'card') }}
                <div class="card">
                    {{ checkoutForm.render('csrf') }}

                    <div class="card-header">
                        <h3 class="card-title">{{ translation._('title-address') }}</h3>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <div>{{ checkoutForm.render('address') }}</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-5">
                                        <div>{{ checkoutForm.render('post_code') }}</div>
                                    </td>
                                    <td>
                                        <div>{{ checkoutForm.render('country') }}</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="card-header">
                        <h3 class="card-title">
                            {{ translation._('title-payment-and-shipping') }}
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

                <button class="btn btn-outline-primary product-buy" type="submit">
                    {{ translation._('button-order') }}
                </button>
            {{ end_form() }}
        </div>

        <div class="col-4">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <tbody>

                            {% for product in products %}
                                <tr>
                                    <td>
                                        <div>
                                            {{ translation._('product-' ~ product['id']) }}
                                        </div>
                                    </td>
                                    <td>
                                        <div>{{ product['quantity'] }}</div>
                                    </td>
                                </tr>
                            {% endfor %}

                            <tr>
                                <td colspan="2">
                                    <div>{{ translation._('text-total-price') }}: {{ total }}</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
