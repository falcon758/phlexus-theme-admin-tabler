{% set translator = translation.setTypePage() %}
<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ blog.title }}
        </h1>
    </div>

    <div class="row row-cards">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <small class="d-block text-muted text-right">{{ blog.createdAt }}</small>
                    <div class="text-center">
                        {% if blog.mediaName  %}
                            <img class="card-image-view" src="{{ assetsPath() ~ 'images/' ~ blog.mediaName }}" alt="" />
                        {% endif %}
                    </div>
                    <hr/>
                    <div>{{ blog.description }}</div>
                    <div class="d-flex align-items-center pt-5 mt-auto">
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
        </div>
    </div>
</div>