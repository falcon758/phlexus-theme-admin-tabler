{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html>
    <head>
        {{ partial('partials/head-base') }}
    </head>

    <body>
        {{ partial('partials/flash-messages') }}

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>