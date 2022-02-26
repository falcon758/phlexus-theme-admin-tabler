// Action listeners
(function($) {
    $('.item-action .delete-item').on('click', function () {
        const row = $(this).parents('tr');
        const recordId = row.attr('record-id');

        if (confirm('Are you sure you want do delete id: ' + recordId)) {
            const route = $(this).attr('delete-route');
            const csrf = $(this).parents('tbody').attr('csrf-token');

            $.post(route, 'csrf=' + csrf, function(response) {
                let status = response.success === true;
                let responseStatus = status ? 'success' : 'error';
                $.fn.flashMessage().flashAdd(response.message, responseStatus);

                if (status) {
                    row.remove();
                }
            });
        }
    });
})( jQuery );