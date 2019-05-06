<!doctype html>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <link rel="stylesheet" href="/assets/themes/phlexus-tabler-admin-theme/css/dashboard.css">
    <link rel="stylesheet" href="/assets/themes/phlexus-tabler-admin-theme/plugins/charts-c3/plugin.css">
    <link rel="stylesheet" href="/assets/themes/phlexus-tabler-admin-theme/plugins/maps-google/plugin.css">

    <script src="/assets/themes/phlexus-tabler-admin-theme/js/require.min.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/js/require.config.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/js/dashboard.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/plugins/charts-c3/plugin.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/plugins/maps-google/plugin.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/plugins/input-mask/plugin.js"></script>
    <script src="/assets/themes/phlexus-tabler-admin-theme/plugins/datatables/plugin.js"></script>
</head>

<body>
<div class="page">
    <div class="page-main">
        <div class="header py-4">
            <div class="container">
                <div class="d-flex">
                    <a class="header-brand" href="/index.html">
                        <img src="/assets/themes/phlexus-tabler-admin-theme/demo/brand/tabler.svg" class="header-brand-img" alt="tabler logo">
                    </a>

                    <div class="d-flex order-lg-2 ml-auto">
                        <div class="nav-item d-none d-md-flex">
                            <a href="{{ site.github_url }}" class="btn btn-sm btn-outline-primary" target="_blank">Source code</a>
                        </div>
                        <div class="dropdown d-none d-md-flex">
                            <a class="nav-link icon" data-toggle="dropdown">
                                <i class="fe fe-bell"></i>
                                <span class="nav-unread"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                <a href="#" class="dropdown-item d-flex">
                                    <span class="avatar mr-3 align-self-center" style="background-image: url({{ site.data.users[1].photo }})"></span>
                                    <div>
                                        <strong>{{ site.data.users[1].name }}</strong> pushed new commit: Fix page load performance issue.
                                        <div class="small text-muted">10 minutes ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item d-flex">
                                    <span class="avatar mr-3 align-self-center" style="background-image: url({{ site.data.users[2].photo }})"></span>
                                    <div>
                                        <strong>{{ site.data.users[2].name }}</strong> started new task: Tabler UI design.
                                        <div class="small text-muted">1 hour ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item d-flex">
                                    <span class="avatar mr-3 align-self-center" style="background-image: url({{ site.data.users[3].photo }})"></span>
                                    <div>
                                        <strong>{{ site.data.users[3].name }}</strong> deployed new version of NodeJS REST Api V3
                                        <div class="small text-muted">2 hours ago</div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item text-center">Mark all as read</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                                <span class="avatar" style="background-image: url({{ site.base }}/{{ user.photo }})"></span>
                                <span class="ml-2 d-none d-lg-block">
                        <span class="text-default">{{ user.name }} {{ user.surname }}</span>
                        <small class="text-muted d-block mt-1">Administrator</small>
                    </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                <a class="dropdown-item" href="#">
                                    <i class="dropdown-icon fe fe-user"></i> Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="dropdown-icon fe fe-settings"></i> Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="float-right"><span class="badge badge-primary">6</span></span>
                                    <i class="dropdown-icon fe fe-mail"></i> Inbox
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="dropdown-icon fe fe-send"></i> Message
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                    <i class="dropdown-icon fe fe-help-circle"></i> Need help?
                                </a>
                                <a class="dropdown-item" href="#">
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
                        Menu
                    </div>
                </div>
            </div>
        </div>

        <div class="my-3 my-md-5">
            {% if pageTitle is defined %}
                <div class="container">
                    <div class="page-header">
                        <h1 class="page-title">{{ pageTitle }}</h1>
                    </div>
                </div>
            {% endif %}

            {{ content() }}
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="#">First link</a></li>
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
                <div class="col-lg-4 mt-4 mt-lg-0">
                    Premium and Open Source dashboard template with responsive and high quality UI. For Free!
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
                                <li class="list-inline-item"><a href="/docs/index.html">Documentation</a></li>
                                <li class="list-inline-item"><a href="/faq.html">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a href="/" class="btn btn-outline-primary btn-sm">Source code</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
                    Copyright © 2019 All rights reserved. Theme <a href="https://tabler.io/">Tabler</a>
                </div>
            </div>
        </div>
    </footer>
</div>

</body>
</html>
