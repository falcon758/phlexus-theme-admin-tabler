{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head-base') }}
    </head>

    <body>
        {{ flash.output() }}

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>