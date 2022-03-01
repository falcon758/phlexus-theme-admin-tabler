{% extends 'layouts/base.volt' %}

{% block content %}
    <div class="page-content">
        <div class="container text-center">
            <div class="display-1 text-muted mb-5">
                <i class="si si-exclamation"></i>
                {{ title }}
            </div>

            <h1 class="h2 mb-3">
                {{ translation._('title-error') }}</h1>
            <p class="h4 text-muted font-weight-normal mb-7">{{ description }}&hellip;</p>

            <a class="btn btn-primary" href="javascript:history.back()">
                <i class="fe fe-arrow-left mr-2"></i>
                {{ translation._('text-go-back') }}
            </a>
        </div>
    </div>
{% endblock %}
