<?php declare(strict_types=1);

return [
    'name' => 'Phlexus Tabler Admin Theme',
    'description' => 'Default Admin Theme for Phlexus CMS',
    'assets' => [
        'header' => [
            'css' => [
                '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css',
                '//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext',
                'css/dashboard.css',
                'plugins/charts-c3/plugin.css',
                'plugins/maps-google/plugin.css',
            ],
            'js' => [
                'js/require.min.js',
                'js/require.config.js',
                'js/dashboard.js',
                'plugins/charts-c3/plugin.js',
                'plugins/maps-google/plugin.js',
                'plugins/input-mask/plugin.js',
                'plugins/datatables/plugin.js',
            ],
        ],
    ],
];
