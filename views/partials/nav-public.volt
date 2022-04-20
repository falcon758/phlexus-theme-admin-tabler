{% set currentPage = ((request.getQuery()['_url'] is defined) ? request.getQuery()['_url'] : '/') %}
{% set default_translation = translation.setPageType() %}

<div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
    <div class="container">
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
                        <a href="{{ url('/') }}" class="nav-link 
                            {{ currentPage === '/' ? 'active' : '' }}">
                            <i class="fe fe-home"></i>
                            {{ default_translation._('link-home') }}
                        </a>
                    </li>

                    {% if acl.hasPermission('baseuser', 'user', 'index') %}
                        <li class="nav-item">
                            <a href="{{ url('/user') }}" class="nav-link 
                                {{ currentPage === '/user' ? 'active' : '' }}">
                                <i class="fe fe-book"></i>
                                {{ default_translation._('link-dashboard') }}
                            </a>
                        </li>
                    {% endif %}

                    <li class="nav-item">
                        <a href="{{ url('/products') }}" class="nav-link 
                            {{ currentPage === '/products' ? 'active' : '' }}">
                            <i class="fe fe-tag"></i>
                            {{ default_translation._('link-products') }}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>