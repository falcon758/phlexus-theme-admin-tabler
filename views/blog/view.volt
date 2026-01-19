{% set translator = translation.setTypePage() %}
<div class="container-xl">
    <div class="page-header d-print-none">
        <div class="row align-items-center">
            <div class="col">
                <a href="javascript:history.back()" class="text-muted">&LeftArrow; {{ translator._('go-back') }}</a>
                <h1 class="page-title mt-2">{{ blog.title }}</h1>
            </div>
            <div class="col-auto">
                <span class="text-muted">{{ blog.createdAt }}</span>
            </div>
        </div>
    </div>

    <div class="row row-cards">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        {% if blog.mediaName  %}
                            <img class="img-fluid rounded" src="{{ assetsPath() ~ 'images/' ~ blog.mediaName }}" alt="" />
                        {% endif %}
                    </div>
                    <hr />
                    <div class="text-muted mb-3">{{ blog.categoryName }}</div>
                    <div>{{ blog.description }}</div>
                </div>
            </div>
        </div>
    </div>
</div>