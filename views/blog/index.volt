{% set translator = translation.setTypePage() %}
<div class="container-xl">
    <div class="page-header d-print-none">
        <div class="row align-items-center">
            <div class="col">
                <h1 class="page-title">{{ translator._('title-blog') }}</h1>
                <div class="text-muted">Latest posts and updates.</div>
            </div>
        </div>
    </div>

    <div class="row row-cards">
        <div class="col-12">
            {% for blog in blogs.items %}
                {% set blogUrl = blog.url ? blog.url : url('/blog/view/' ~ blog.blogID) %}
                <div class="card card-aside">
                    <a href="{{ blogUrl }}" class="card-aside-column">
                        {% if blog.mediaName  %}
                            <img class="card-image" src="{{ assetsPath() ~ 'images/' ~ blog.mediaName }}" alt="" />
                        {% endif %}
                    </a>
                    <div class="card-body d-flex flex-column">
                        <div class="row">
                            <div class="col-md-8 col-xl-10">
                                <h4>
                                    <a href="{{ blogUrl }}">{{ blog.title }}</a>
                                </h4>
                            </div>
                            <div class="col-md-4 col-xl-2">
                                <small class="d-block text-muted">{{ blog.createdAt }}</small>
                            </div>
                        </div>
                        <div class="text-muted">{{ blog.description }}</div>
                        <div class="d-flex align-items-center pt-5 mt-auto">
                            <div>
                                <a href="{{ blogUrl }}" class="btn btn-primary">{{ translator._('View blog') }}</a>
                            </div>
                            <div class="ml-auto text-muted">
                                <span class="d-none d-md-inline-block ml-3">
                                    <span class="mr-3">{{ blog.categoryName }}</span>
                                    <span class="mr-3"><i class="fe fe-heart mr-1"></i>0</span>
                                    <span><i class="fe fe-message-square mr-1"></i>0</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            {% endfor %}

            {{ 
                partial('partials/pagination',   [
                    'page': blogs,
                    'limit': blogs.getLimit(),
                    'translator': translator
                ])
            }}
        </div>
    </div>
</div>