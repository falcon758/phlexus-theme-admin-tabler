<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            {{ translation._('title-view') }}
        </h1>
    </div>

    <div class="row row-cards row-deck">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                        <thead>
                            <tr>
                                {% for name in display %}
                                    <th>{{ translation._('table-' ~ name) }}</th>
                                {% endfor %}
                                <th>{{ translation._('table-actions') }}</th>
                            </tr>
                        </thead>
                        <tbody csrf-token="{{ csrfToken }}">
                            {% for record in records %}
                                {% set recordID = record['id'] %}
                                <tr record-id="{{ recordID }}">
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
                                                    <i class="dropdown-icon fe fe-edit-2"></i> {{ translation._('link-edit') }}
                                                </a>
                                                <div class="dropdown-divider"></div>
                                                <a href="javascript:void(0)" class="dropdown-item delete-item" delete-route="{{ defaultRoute ~ '/delete/' ~ recordID }}">
                                                    <i class="dropdown-icon fe fe-trash"></i> {{ translation._('link-delete') }}
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            {% if records|length == 0 %}
                                <tr>
                                    <td colspan="2">{{ translation._('row-no-records') }}</td>
                                </tr>
                            {% endif %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
