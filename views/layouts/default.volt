{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html lang="en">
    <head>
        {{ partial('partials/head') }}
    </head>

    <body class="antialiased">
        {{ partial('partials/header') }}

        {{ partial('partials/nav') }}
        
        <div class="page">
            {{ partial('partials/flash-messages') }}

            <div class="page-main">
                <div class="py-4">
                    {% if pageTitle is defined %}
                        <div class="container-xl">
                            <div class="page-header d-print-none">
                                <h1 class="page-title">{{ pageTitle }}</h1>
                            </div>
                        </div>
                    {% endif %}

                    {{ content() }}
                </div>
            </div>
        </div>

        {{ partial('partials/footer') }}
    </body>
</html>
