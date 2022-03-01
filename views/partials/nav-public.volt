{% set currentPage = request.getQuery()['_url'] %}
{% set default_translation = translation.setPage() %}

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
                        <a href="{{ url('/home') }}" class="nav-link {{ currentPage === '/user' ? 'active' : '' }}">
                            <i class="fe fe-home"></i>
                            {{ default_translation._('link-home') }}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>