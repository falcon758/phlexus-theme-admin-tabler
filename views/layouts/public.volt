{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head') }}
    </head>

    <body>
        {{ partial('partials/header-public') }}

        {{ partial('partials/nav-public') }}
        
        <div class="page">
            {{ partial('partials/flash-messages') }}

            <div class="page-main">
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
        </div>

        {{ partial('partials/footer-public') }}
    </body>
</html>
