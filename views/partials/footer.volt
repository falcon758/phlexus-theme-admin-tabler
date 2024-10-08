{% set default_translation = translation.setPageType() %}

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="{{ url('/user') }}">{{ default_translation._('link-home') }}</a></li>
                            <li><a href="#">Second link</a></li>
                        </ul>
                    </div>

                    <div class="col-6 col-md-3">
                        <ul class="list-unstyled mb-0">
                            <li><a href="#">Third link</a></li>
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
    <div class="container">
        <div class="row align-items-center flex-row-reverse">
            <div class="col-auto ml-lg-auto">
                <div class="row align-items-center">
                    <div class="col-auto">
                        <ul class="list-inline list-inline-dots mb-0">
                            <li class="list-inline-item"><a href="https://github.com/phlexus">Documentation</a></li>
                            <li class="list-inline-item"><a href="https://github.com/phlexus">FAQ</a></li>
                        </ul>
                    </div>

                    <div class="col-auto">
                        <a href="https://github.com/phlexus" class="btn btn-outline-primary btn-sm">Source code</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
                {{ default_translation._('text-copyright') }} © {{ date('Y') }}
                {{ default_translation._('text-rights-reserved') }}
            </div>
        </div>
    </div>
</footer>

