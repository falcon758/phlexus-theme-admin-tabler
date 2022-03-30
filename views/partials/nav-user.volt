{% set default_translation = translation.setPageType() %}

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