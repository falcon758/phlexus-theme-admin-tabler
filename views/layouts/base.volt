{% set publicUserThemePath = '/assets/themes/phlexus-tabler-admin' %}
<!doctype html>
<html>
    <head>
        {{ partial('partials/head') }}
    </head>

    <body>
        {{ flash.output() }}

        <div class="page">
            {{ content() }}
        </div>
    </body>
</html>