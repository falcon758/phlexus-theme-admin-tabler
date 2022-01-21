{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head-base') }}
    </head>

    <body>
        {% if flash.has('error') %}
            <div class="alert alert-warning">
                {{ flash.output() }}
            </div>
        {% endif %}

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>