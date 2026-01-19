{% set default_translation = translation.setPageType() %}

<div class="container-xl">
    <div class="page-header d-print-none">
        <h1 class="page-title">{{ default_translation._('title-view') }}</h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table dataTables_wrapper">
                        <thead>
                            <tr>
                                {% for name in display %}
                                    <th>{{ default_translation._('table-' ~ name) }}</th>
                                {% endfor %}

                                <th>{{ default_translation._('table-actions') }}</th>
                            </tr>
                        </thead>

                        <tbody csrf-token="{{ csrfToken }}">
                            {% for record in records %}
                                {% set recordID = record['id'] %}

                                <tr>
                                    {% for name in display %}
                                    <td>
                                        <div>{{ record[name] }}</div>
                                    </td>
                                    {% endfor %}
                                    <td>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="{{ url(defaultRoute ~ '/edit/' ~ recordID) }}" class="dropdown-item edit-item">
                                                    <i class="dropdown-icon fe fe-edit-2"></i> {{ default_translation._('link-edit') }}
                                                </a>
                                                <div class="dropdown-divider"></div>
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ defaultRoute ~ '/delete/' ~ recordID }}">
                                                    <i class="dropdown-icon fe fe-trash"></i> {{ default_translation._('link-delete') }}
                                                </a>

                                                {% for relatedName, relatedUrl in relatedViews %}
                                                    <div class="dropdown-divider"></div>
                                                    <a href="{{ url(relatedUrl ~ '/?related=' ~ recordID) }}" class="dropdown-item edit-item">
                                                        <i class="dropdown-icon fe fe-link"></i> {{ default_translation._(relatedName) }}
                                                    </a>
                                                {% endfor %}
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}

                            {% if records|length == 0 %}
                                <tr>
                                    <td colspan="2">{{ default_translation._('text-no-records') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
                {{ 
                    partial('partials/pagination',   [
                        'page': paginate,
                        'limit': paginate.getLimit(),
                        'translator': default_translation
                    ])
                }}
            </div>
        </div>
    </div>
</div>
