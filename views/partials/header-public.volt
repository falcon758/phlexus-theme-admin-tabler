<div class="header py-4">
    <div class="container">
        <div class="d-flex">
            <a class="header-brand" href="/home">
                <img src="{{ url(publicUserThemePath ~ '/images/logo/phlexus.svg') }}" class="header-brand-img" alt="phlexus logo">
            </a>

            <div class="d-flex order-lg-2 ml-auto">
                <div class="dropdown">
                    <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                        <span class="avatar" style="background-image: url({{ publicUserThemePath }}demo/faces/male/9.jpg)"></span>
                        <span class="ml-2 d-none d-lg-block">
                        <span class="text-default">Name Surname</span>
                        <small class="text-muted d-block mt-1">Administrator</small>
                    </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                        <a class="dropdown-item" href="{{ url('/user/auth/logout') }}">
                            <i class="dropdown-icon fe fe-log-out"></i> Sign out
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