{% set translator = translation.setTypePage() %}
<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ translator._('title-blog') }}
        </h1>
    </div>

    <div class="row row-cards">
        <div class="col-12">
            {% for blog in blogs.items %}
                <div class="card card-aside">
                    <a href="#" class="card-aside-column">
                        {% if blog.mediaName  %}
                            <img src="{{ assetsPath() ~ 'images/' . blog.mediaName }}" alt="" />
                        {% endif %}
                    </a>
                    <div class="card-body d-flex flex-column">
                        <h4>
                            <a href="{{ blogUrl }}">{{ blog.title }}</a>
                        </h4>
                        <div class="text-muted">{{ blog.description }}</div>
                        <div class="d-flex align-items-center pt-5 mt-auto">
                            <div>
                                <a href="{{ blogUrl }}" class="button large">{{ translator._('View blog') }}</a>
                                <small class="d-block text-muted">3 days ago</small>
                            </div>
                            <div class="ml-auto text-muted">
                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3">
                                    <span>
                                        <a href="#">{{ blog.categoryName }}</a>
                                    </span>
                                    <i>
                                        <a href="#" class="fe fe-heart mr-1">0</a>
                                    </i>
                                    <i>
                                        <a href="#" class="fe fe-comment mr-1">0</a>
                                    </i>
                                </a>
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