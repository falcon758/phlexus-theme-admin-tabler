<div class="header py-4">
    <div class="container">
        <div class="d-flex">
            <a class="header-brand" href="/">
                <img src="{{ url(publicUserThemePath ~ '/images/logo/phlexus.svg') }}" class="header-brand-img" alt="phlexus logo">
            </a>

            <div class="d-flex order-lg-2 ml-auto">
                <div class="nav-item d-none d-md-flex">
                    <a href="https://github.com/phlexus" class="btn btn-sm btn-outline-primary" target="_blank">Source code</a>
                </div>

                {{ partial('partials/nav-cart') }}

                {% if acl.hasPermission('baseuser', 'profile', 'edit') %}
                    {{ partial('partials/nav-user') }}
                {% endif %}
            </div>

            <a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
                <span class="header-toggler-icon"></span>
            </a>
        </div>
    </div>
</div>