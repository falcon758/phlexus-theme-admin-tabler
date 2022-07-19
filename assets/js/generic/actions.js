// Action listeners
(function($) {
    // Trigger delete item action
    $('.item-action .delete-item').on('click', function () {
        const messageValidator = RegExp('^[a-zA-Z0-9\-\\s]+$');
        const row = $(this).parents('tr');

        let firstColText = row.find('td:first').text().trim();
        let message = 'Unknown';

        if (firstColText.match(messageValidator) !== null) {
            message = firstColText;
        }

        if (confirm('Are you sure you want do delete record: ' + message)) {
            const route = $(this).attr('delete-route');
            const tbody = $(this).parents('tbody');
            const csrf = tbody.attr('csrf-token');

            $.post(route, 'csrf=' + csrf, function(response) {
                let status = response.success === true;
                let responseStatus = status ? 'success' : 'error';
                $.fn.flashMessage().flashAdd(response.message, responseStatus);

                if (status) {
                    row.remove();
                    tbody.attr('csrf-token', response.newToken);
                }
            });
        }
    });

    // Trigger show/hide class
    $('.trigger-element').on('click', function() {
        const targetElement = $(this).attr('target-element');
        
        if (targetElement) {
            $('.' + targetElement).toggleClass('d-none');
        }
    });
})( jQuery );