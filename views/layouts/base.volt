{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head-base') }}
    </head>

    <body>
        <div class="alert alert-warning">{{ flash.output() }}</div>

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>