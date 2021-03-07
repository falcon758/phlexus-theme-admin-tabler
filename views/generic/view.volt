<div class="container">
    <div class="page-header">
        <h1 class="page-title">
            View
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
                                    <th>{{ name }}</th>
                                {% endfor %}
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            {% for record in records %}
                                <tr>
                                    {% for name in display %}
                                    <td>
                                        <div>{{ record[name] }}</div>
                                    </td>
                                    {% endfor %}
                                    <td class="text-center">
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon"><i class="fe fe-more-vertical"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-edit-2"></i> Edit</a>
                                                <div class="dropdown-divider"></div>
                                                <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-link"></i> Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
