{% set default_translation = translation.setPageType() %}

<div class="header py-4">
    <div class="container">
        <div class="d-flex">
            <a class="header-brand" href="/user">
                <img src="{{ url(publicUserThemePath ~ '/images/logo/phlexus.svg') }}" class="header-brand-img" alt="phlexus logo">
            </a>

            <div class="d-flex order-lg-2 ml-auto">
                <div class="nav-item d-none d-md-flex">
                    <a href="https://github.com/phlexus" class="btn btn-sm btn-outline-primary" target="_blank">Source code</a>
                </div>

                {{ partial('partials/nav-cart') }}

                <div class="dropdown d-none d-md-flex">
                    <a class="nav-link icon" data-toggle="dropdown">
                        <i class="fe fe-bell"></i>
                        <span class="nav-unread"></span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                        <a href="#" class="dropdown-item d-flex">
                            <span class="avatar mr-3 align-self-center" style="background-image: url({{ publicUserThemePath }}demo/faces/male/41.jpg)"></span>
                            <div>
                                <strong>Username1</strong> pushed new commit: Fix page load performance issue.
                                <div class="small text-muted">10 minutes ago</div>
                            </div>
                        </a>

                        <div class="dropdown-divider"></div>

                        <a href="#" class="dropdown-item text-center">Mark all as read</a>
                    </div>
                </div>

                {{ partial('partials/nav-user') }}
            </div>

            <a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
                <span class="header-toggler-icon"></span>
            </a>
        </div>
    </div>
</div>