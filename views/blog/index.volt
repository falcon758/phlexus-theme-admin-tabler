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
                                <a href="{{ blogUrl }}" class="button large">{{ translator._('View blog') }}</a>
                            </div>
                            <div class="ml-auto text-muted">
                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3">
                                    <span>
                                        <a href="#">{{ blog.categoryName }}</a>
                                    </span>
                                    <i>
                                        <a href="#" class="fe fe-heart mr-1">&nbsp;0</a>
                                    </i>
                                    <i>
                                        <a href="#" class="fe fe-message-square mr-1">&nbsp;0</a>
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