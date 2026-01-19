{% set default_translation = translation.setPageType() %}

<div class="footer">
    <div class="container-xl">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="{{ url('/') }}">{{ default_translation._('link-home') }}</a></li>
                            <li><a href="{{ url('/cart') }}">{{ default_translation._('link-cart') }}</a></li>
                        </ul>
                    </div>

                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="{{ url('/products') }}">{{ default_translation._('link-products') }}</a></li>
                            <li><a href="#">Fourth link</a></li>
                        </ul>
                    </div>

                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="#">Fifth link</a></li>
                            <li><a href="#">Sixth link</a></li>
                        </ul>
                    </div>

                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="#">Other link</a></li>
                            <li><a href="#">Last link</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container-xl">
        <div class="row align-items-center flex-row-reverse">
            <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
                {{ default_translation._('text-copyright') }} © {{ date('Y') }}
                {{ default_translation._('text-rights-reserved') }}
            </div>
        </div>
    </div>
</footer>

