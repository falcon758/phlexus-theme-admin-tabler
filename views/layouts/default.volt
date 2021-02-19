{% set publicUserThemePath = '/assets/themes/phlexus-tabler-admin' %}
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">

        <title>{{ get_title() }}</title>

        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
        <link rel="stylesheet" href="{{ publicUserThemePath }}/css/dashboard.css">
        <link rel="stylesheet" href="{{ publicUserThemePath }}/plugins/charts-c3/plugin.css">
        <link rel="stylesheet" href="{{ publicUserThemePath }}/plugins/maps-google/plugin.css">

        <script src="{{ publicUserThemePath }}/js/require.min.js"></script>
        <script src="{{ publicUserThemePath }}/js/require.config.js"></script>
        <script src="{{ publicUserThemePath }}/js/dashboard.js"></script>
        <script src="{{ publicUserThemePath }}/plugins/charts-c3/plugin.js"></script>
        <script src="{{ publicUserThemePath }}/plugins/maps-google/plugin.js"></script>
        <script src="{{ publicUserThemePath }}/plugins/input-mask/plugin.js"></script>
        <script src="{{ publicUserThemePath }}/plugins/datatables/plugin.js"></script>
    </head>

    <body>
        <div class="page">
            <div class="page-main">
                <div class="header py-4">
                    <div class="container">
                        <div class="d-flex">
                            <a class="header-brand" href="/admin">
                                <img src="{{ publicUserThemePath }}/images/logo/phlexus.svg" class="header-brand-img" alt="phlexus logo">
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
                                            <span class="avatar mr-3 align-self-center" style="background-image: url(/assets/themes/phlexus-tabler-admin-theme/demo/faces/male/41.jpg)"></span>
                                            <div>
                                                <strong>Username1</strong> pushed new commit: Fix page load performance issue.
                                                <div class="small text-muted">10 minutes ago</div>
                                            </div>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex">
                                            <span class="avatar mr-3 align-self-center" style="background-image: url(/assets/themes/phlexus-tabler-admin-theme/demo/faces/male/1.jpg)"></span>
                                            <div>
                                                <strong>Username2</strong> started new task: Tabler UI design.
                                                <div class="small text-muted">1 hour ago</div>
                                            </div>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex">
                                            <span class="avatar mr-3 align-self-center" style="background-image: url(/assets/themes/phlexus-tabler-admin-theme/demo/faces/male/18.jpg)"></span>
                                            <div>
                                                <strong>Username3</strong> deployed new version of NodeJS REST Api V3
                                                <div class="small text-muted">2 hours ago</div>
                                            </div>
                                        </a>
                                        <div class="dropdown-divider"></div>
                                        <a href="#" class="dropdown-item text-center">Mark all as read</a>
                                    </div>
                                </div>

                                <div class="dropdown">
                                    <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                                        <span class="avatar" style="background-image: url(/assets/themes/phlexus-tabler-admin-theme/demo/faces/male/9.jpg)"></span>
                                        <span class="ml-2 d-none d-lg-block">
                                        <span class="text-default">Name Surname</span>
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
                                <ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                                    <li class="nav-item">
                                        <a href="/user" class="nav-link active"><i class="fe fe-home"></i> Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
                                            <i class="fe fe-box"></i> Interface
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-arrow">
                                            <a href="./cards.html" class="dropdown-item">Cards design</a>
                                            <a href="./charts.html" class="dropdown-item">Charts</a>
                                            <a href="./pricing-cards.html" class="dropdown-item">Pricing cards</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
                                            <i class="fe fe-calendar"></i> Components
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-arrow">
                                            <a href="./maps.html" class="dropdown-item">Maps</a>
                                            <a href="./icons.html" class="dropdown-item">Icons</a>
                                            <a href="./store.html" class="dropdown-item">Store</a>
                                            <a href="./blog.html" class="dropdown-item">Blog</a>
                                            <a href="./carousel.html" class="dropdown-item">Carousel</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
                                            <i class="fe fe-file"></i> Pages
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-arrow">
                                            <a href="./profile.html" class="dropdown-item">Profile</a>
                                            <a href="./login.html" class="dropdown-item">Login</a>
                                            <a href="./register.html" class="dropdown-item">Register</a>
                                            <a href="./forgot-password.html" class="dropdown-item">Forgot password</a>
                                            <a href="./400.html" class="dropdown-item">400 error</a>
                                            <a href="./401.html" class="dropdown-item">401 error</a>
                                            <a href="./403.html" class="dropdown-item">403 error</a>
                                            <a href="./404.html" class="dropdown-item">404 error</a>
                                            <a href="./500.html" class="dropdown-item">500 error</a>
                                            <a href="./503.html" class="dropdown-item">503 error</a>
                                            <a href="./email.html" class="dropdown-item">Email</a>
                                            <a href="./empty.html" class="dropdown-item">Empty page</a>
                                            <a href="./rtl.html" class="dropdown-item">RTL mode</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a href="./form-elements.html" class="nav-link"><i class="fe fe-check-square"></i> Forms</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="./gallery.html" class="nav-link"><i class="fe fe-image"></i> Gallery</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="./docs/index.html" class="nav-link"><i class="fe fe-file-text"></i> Documentation</a>
                                    </li>
                                </ul>
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
                                        <li><a href="/user">Home</a></li>
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
                                        <li class="list-inline-item"><a href="https://github.com/phlexus">Documentation</a></li>
                                        <li class="list-inline-item"><a href="https://github.com/phlexus">FAQ</a></li>
                                    </ul>
                                </div>
                                <div class="col-auto">
                                    <a href="https://github.com/phlexus" class="btn btn-outline-primary btn-sm">Source code</a>
                                </div>
                            </div>
                        </div>F
                        <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
                            Copyright © 2019 All rights reserved. Theme <a href="https://tabler.io/">Tabler</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

    </body>
</html>
