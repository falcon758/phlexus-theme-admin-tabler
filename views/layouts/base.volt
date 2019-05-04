<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    {{ assets.outputCss('header') }}
    {{ assets.outputJs('header') }}
</head>

<body>
<div class="page">
    {% block content %}{% endblock %}
</div>

</body>
</html>
