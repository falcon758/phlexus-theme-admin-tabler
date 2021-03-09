<div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3 ml-auto">
                <form class="input-icon my-3 my-lg-0">
                    <input type="search" class="form-control header-search" placeholder="Search&hellip;" tabindex="1">
                    <div class="input-icon-addon">
                        <i class="fe fe-search"></i>
                    </div>
                </form>
            </div>

            <div class="col-lg order-lg-first">
                <ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                    <li class="nav-item">
                        <a href="{{ url('user') }}" class="nav-link active"><i class="fe fe-home"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
                            <i class="fe fe-user"></i> Users
                        </a>

                        <div class="dropdown-menu dropdown-menu-arrow">
                            <a href="{{ url('user/users') }}" class="dropdown-item">List</a>
                            <a href="{{ url('user/users/create') }}" class="dropdown-item">Create</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>