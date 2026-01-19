{% set page_translation = translation.setTypePage().getTranslator() %}
{% set default_translation = translation.setPage() %}

<div class="container-xl">
    <div class="row row-cards">
        <div class="col-12 col-md-10 col-lg-8 mx-auto">
            <div class="card">
                <div class="card-body text-center">
                    <span class="avatar avatar-lg bg-green-lt mb-4">
                        <i class="fe fe-check"></i>
                    </span>
                    <h1 class="mb-2">{{ page_translation._('title-order-success') }}</h1>
                    <div class="mt-4">
                        <a href="{{ url('/products') }}" class="btn btn-primary">
                            <i class="fe fe-tag mr-2"></i>{{ default_translation._('link-products') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
