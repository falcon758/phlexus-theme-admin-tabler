// Action listeners
(function($) {
    $('.item-action .delete-item').on('click', function () {
        const messageValidator = RegExp('^[a-zA-Z0-9\\s]+$');
        const row = $(this).parents('tr');

        let firstColText = row.find('td:first').text().trim();
        let message = 'Unknown';

        if (firstColText.match(messageValidator) !== null) {
            message = firstColText;
        }

        if (confirm('Are you sure you want do delete record: ' + message)) {
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