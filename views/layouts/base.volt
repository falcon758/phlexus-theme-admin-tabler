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

{{ flash.output() }}

<div class="page">
    {{ content() }}
</div>

</body>
</html>
