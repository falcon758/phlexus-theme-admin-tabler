{% set translation = translation.setTypePage() %}

{% block content %}
<div class="page-content">
    <div class="container-xl">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-lg-6">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="display-1 text-muted mb-4">500</div>
                        <h1 class="h2 mb-3">{{ translation._('title-error') }}</h1>
                        <p class="h4 text-muted font-weight-normal mb-4">{{ translation._('text-error') }}</p>
                        <a class="btn btn-primary" href="javascript:history.back()">
                            <i class="fe fe-arrow-left mr-2"></i>{{ translation._('text-go-back') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}
