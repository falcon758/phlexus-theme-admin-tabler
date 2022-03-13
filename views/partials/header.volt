{% set default_translation = translation.setPage() %}

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

                <div class="dropdown">
                    <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                        <span class="avatar" style="background-image: url(/assets/1/2/{{ user.userDir }}/{{ user.image }})"></span>

                        <span class="ml-2 d-none d-lg-block">
                            <span class="text-default">{{ user.email }}</span>
                            <small class="text-muted d-block mt-1">{{ user.userType }}</small>
                        </span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                        <a class="dropdown-item" href="{{ url('/profile') }}">
                            <i class="dropdown-icon fe fe-user"></i>
                            {{ default_translation._('link-profile') }}
                        </a>

                        <a class="dropdown-item" href="{{ url('/user/auth/logout') }}">
                            <i class="dropdown-icon fe fe-log-out"></i>
                            {{ default_translation._('link-sign-out') }}
                        </a>
                    </div>
                </div>
            </div>

            <a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
                <span class="header-toggler-icon"></span>
            </a>
        </div>
    </div>
</div>