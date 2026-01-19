{% set publicUserThemePath = assetsPath() %}

<!doctype html>
<html lang="en">
    <head>
        {{ partial('partials/head-base') }}
    </head>

    <body class="antialiased">
        {{ partial('partials/flash-messages') }}

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>