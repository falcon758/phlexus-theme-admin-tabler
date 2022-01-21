{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head') }}
    </head>

    <body>
        {{ partial('partials/header') }}

        {{ partial('partials/nav') }}
        
        <div class="page">
            {% if flash.has('error') %}
                <div class="alert alert-warning">
                    {{ flash.output() }}
                </div>
            {% endif %}

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

        {{ partial('partials/footer') }}
    </body>
</html>
