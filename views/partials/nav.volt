{% set currentPage = ((request.getQuery()['_url'] is defined) ? request.getQuery()['_url'] : '/') %}
{% set default_translation = translation.setPageType() %}

<div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
    <div class="container-xl">
        <div class="row align-items-center">
            <div class="col-lg-3 ml-auto">
                <form class="input-icon my-3 my-lg-0">
                    <input name="s" type="search" class="form-control header-search" placeholder="Search&hellip;" tabindex="1">
                    <div class="input-icon-addon">
                        <i class="fe fe-search"></i>
                    </div>
                </form>
            </div>

            <div class="col-lg order-lg-first">
                <ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                    <li class="nav-item">
                        <a href="{{ url('/') }}" 
                           class="nav-link {{ currentPage === '/' ? 'active' : '' }}">
                            <i class="fe fe-home"></i>
                            {{ default_translation._('link-home') }}
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ url('/user') }}" 
                           class="nav-link {{ currentPage === '/user' ? 'active' : '' }}">
                            <i class="fe fe-tag"></i>
                            {{ default_translation._('link-dashboard') }}
                        </a>
                    </li>

                    {% if acl.hasPermission('shop', 'order', 'index') %}
                        <li class="nav-item">
                            <a href="{{ url('/orders') }}" 
                            class="nav-link {{ currentPage === '/orders' ? 'active' : '' }}">
                                <i class="fe fe-book"></i>
                                {{ default_translation._('link-orders') }}
                            </a>
                        </li>
                    {% endif %}

                    {% if acl.hasPermission('shop', 'payment', 'index') %}
                        <li class="nav-item">
                            <a href="javascript:void(0)" 
                               class="nav-link {{ (currentPage === '/payments' or currentPage === '/payments/history') ? 'active' : '' }}" 
                               data-toggle="dropdown">
                                <i class="fe fe-credit-card"></i>
                                {{ default_translation._('link-payments') }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-arrow">
                                <a href="{{ url('/payments') }}" 
                                   class="dropdown-item {{ currentPage === '/payments' ? 'active' : '' }}">
                                    {{ default_translation._('link-payment-in-payment') }}
                                </a>
                                <a href="{{ url('/payments/history') }}" 
                                   class="dropdown-item {{ currentPage === '/payments/history' ? 'active' : '' }}">
                                    {{ default_translation._('link-payment-history') }}
                                </a>
                            </div>
                        </li>
                    {% endif %}

                    {% if acl.hasPermission('baseuser', 'user', 'view') %}
                        <li class="nav-item">
                            <a href="javascript:void(0)" 
                               class="nav-link {{ (currentPage === '/user/users' or currentPage === '/user/create') ? 'active' : '' }}" 
                               data-toggle="dropdown">
                                <i class="fe fe-user"></i>
                                {{ default_translation._('link-users') }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-arrow">
                                <a href="{{ url('user/users') }}" 
                                   class="dropdown-item {{ currentPage === '/user/users' ? 'active' : '' }}">
                                    {{ default_translation._('link-users-list') }}
                                </a>
                                <a href="{{ url('user/create') }}" 
                                   class="dropdown-item {{ currentPage === '/user/create' ? 'active' : '' }}">
                                    {{ default_translation._('link-user-create') }}
                                </a>
                            </div>
                        </li>
                    {% endif %}

                    {% if acl.hasPermission('shop', 'product', 'view') %}
                        <li class="nav-item">
                            <a href="javascript:void(0)" 
                               class="nav-link {{ (currentPage === '/shop/product' or currentPage === '/shop/product/create') ? 'active' : '' }}" 
                               data-toggle="dropdown">
                                <i class="fe fe-shopping-cart"></i>
                                {{ default_translation._('link-products') }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-arrow">
                                <a href="{{ url('shop/product') }}" 
                                   class="dropdown-item {{ currentPage === '/shop/product' ? 'active' : '' }}">
                                    {{ default_translation._('link-product-list') }}
                                </a>
                                <a href="{{ url('shop/product/create') }}" 
                                   class="dropdown-item {{ currentPage === '/shop/product/create' ? 'active' : '' }}">
                                    {{ default_translation._('link-product-create') }}
                                </a>
                            </div>
                        </li>
                    {% endif %}
                </ul>
            </div>
        </div>
    </div>
</div>
