{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container-xl">
    <div class="row row-cards">
        <div class="col-12 col-md-10 col-lg-8 mx-auto">
            <div class="card">
                <div class="card-body text-center">
                    <span class="avatar avatar-lg bg-red-lt mb-4">
                        <i class="fe fe-x"></i>
                    </span>
                    <h1 class="mb-2">{{ page_translation._('title-order-canceled') }}</h1>
                    <div class="mt-4">
                        <a href="{{ url('/cart') }}" class="btn btn-primary">
                            <i class="fe fe-shopping-cart mr-2"></i>{{ default_translation._('link-cart') }}
                        </a>
                        <a href="{{ url('/products') }}" class="btn btn-outline-primary ml-2">
                            {{ default_translation._('link-products') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
