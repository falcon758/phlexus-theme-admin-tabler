<!doctype html>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <script src="/admin-assets/assets/js/require.min.js"></script>
    <script>
        requirejs.config({
            baseUrl: '.'
        });
    </script>
    <!-- Dashboard Core -->
    <link href="/admin-assets/assets/css/dashboard.css" rel="stylesheet" />
    <script src="/admin-assets/assets/js/dashboard.js"></script>
    <!-- c3.js Charts Plugin -->
    <link href="/admin-assets/assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
    <script src="/admin-assets/assets/plugins/charts-c3/plugin.js"></script>
    <!-- Google Maps Plugin -->
    <link href="/admin-assets/assets/plugins/maps-google/plugin.css" rel="stylesheet" />
    <script src="/admin-assets/assets/plugins/maps-google/plugin.js"></script>
    <!-- Input Mask Plugin -->
    <script src="/admin-assets/assets/plugins/input-mask/plugin.js"></script>
    <!-- Datatables Plugin -->
    <script src="/admin-assets/assets/plugins/datatables/plugin.js"></script>
</head>

<body>
<div class="page">
    {% block content %}{% endblock %}
</div>

</body>
</html>
