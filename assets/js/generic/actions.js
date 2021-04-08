// Action listeners
(function($) {
    $('.item-action .delete-item').on('click', function () {
        const row = $(this).parents('tr');
        const recordId = row.attr('record-id');

        if(confirm('Are you sure you want do delete id: ' + recordId)) {
            const route = $(this).attr('delete-route');
            const csrf = $(this).parents('tbody').attr('csrf-token');

            $.post(route, 'csrf=' + csrf, function(response) {
                if(response.status === 1) {
                    row.delete();
                }
            });
        }
    });
})( jQuery );