{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ page_translation._('title-invoice') }}
        </h1>
    </div>

    <div class="page-wrapper">
        <div class="container-xl">
            <!-- Page title -->
            <div class="page-header d-print-none">
                <div class="row g-2 align-items-center">
                    <!-- Page title actions -->
                    <div class="col-12 col-md-auto ms-auto d-print-none">
                        <button type="button" class="btn btn-primary" onclick="javascript:window.print();">
                            <!-- Download SVG icon from http://tabler-icons.io/i/printer -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="#fff" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                    d="M17 17h2a2 2 0 0 0 2 -2v-4a2 2 0 0 0 -2 -2h-14a2 2 0 0 0 -2 2v4a2 2 0 0 0 2 2h2" />
                                <path d="M17 9v-4a2 2 0 0 0 -2 -2h-6a2 2 0 0 0 -2 2v4" />
                                <rect x="7" y="13" width="10" height="8" rx="2" />
                            </svg>
                            Print Invoice
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-body">
            <div class="container-xl">
                <div class="card card-lg">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <p class="h3">{{ page_translation._('table-company') }}</p>
                                <address>
                                    Street Address<br>
                                    State, City<br>
                                    Region, Postal Code<br>
                                    ltd@example.com
                                </address>
                            </div>
                            <div class="col-3 text-end">
                                <p class="h3">{{ page_translation._('table-billing-address') }}</p>
                                <address>
                                    {{ groupedOrder['billingAddress'] }}<br/>
                                    {{ groupedOrder['billingPostCode'] }}<br/>
                                    {{ groupedOrder['billingCountry'] }}
                                </address>
                            </div>
                            <div class="col-3 text-end">
                                <p class="h3">{{ page_translation._('table-shipment-address') }}</p>
                                <address>
                                    {{ groupedOrder['shipmentAddress'] }}<br/>
                                    {{ groupedOrder['shipmentPostCode'] }}<br/>
                                    {{ groupedOrder['shipmentCountry'] }}
                                </address>
                            </div>
                            <div class="col-12 my-5">
                                <h1>{{ page_translation._('subtitle-invoice-number') }} {{ groupedOrder['invoiceNumber'] }}</h1>
                            </div>
                        </div>
                        <table class="table table-transparent table-responsive">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 1%"></th>
                                    <th class="text-center" style="width: 1%">{{ page_translation._('table-product') }}</th>
                                    <th class="text-center" style="width: 1%">{{ page_translation._('table-quantity') }}</th>
                                    <th class="text-center" style="width: 1%">{{ page_translation._('table-price') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {% for key,item in groupedOrder['items'] %}
                                    <tr>
                                        <td class="text-center">
                                            {{ key + 1 }}
                                        </td>
                                        <td class="text-center">
                                            <p class="strong mb-1">{{ default_translation._('product-' ~ item['productID']) }}</p>
                                        </td>
                                        <td class="text-center">
                                            {{ item['quantity'] }}
                                        </td>
                                        <td class="text-center">
                                            {{ item['price'] }} &euro;
                                        </td>
                                    </tr>
                                {% endfor %}
                                <tr>
                                    <td colspan="3" class="strong text-end">
                                        {{ page_translation._('table-payment-method') }}
                                    </td>
                                    <td class="text-end">
                                        {{ groupedOrder['paymentMethod'] }}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="strong text-end">
                                        {{ page_translation._('table-shipping-method') }}
                                    </td>
                                    <td class="text-end">
                                        {{ groupedOrder['shippingMethod'] }}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="strong text-end">
                                        {{ page_translation._('table-subtotal') }}
                                    </td>
                                    <td class="text-end">
                                        {{ groupedOrder['totalPrice'] }} &euro;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="strong text-end">
                                        {{ page_translation._('table-vat-tax') }}
                                    </td>
                                    <td class="text-end">23%</td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="strong text-end">
                                        {{ page_translation._('table-vat-tax-value') }}
                                    </td>
                                    <td class="text-end">
                                        {{ groupedOrder['totalPrice'] * 0.23 }} &euro;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="font-weight-bold text-uppercase text-end">
                                        {{ page_translation._('table-total') }}
                                    </td>
                                    <td class="font-weight-bold text-end">
                                        {{ groupedOrder['totalPrice'] }} &euro;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="text-muted text-center mt-5">
                            {{ page_translation._('footer-note') }}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>