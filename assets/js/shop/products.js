// Products listeners
(function($) {
    $('.card .product-buy').on('click', function () {
        const row = $(this).parents('.row-cards');
        const route = $(this).attr('buy-route');
        const csrf = row.attr('csrf-token');

        $.post(route, 'csrf=' + csrf, function(response) {
            console.log(response);

            const status = response.success === true;
            const responseStatus = status ? 'success' : 'error';
            $.fn.flashMessage().flashAdd(response.message, responseStatus);

            if (response.success) {
                row.attr('csrf-token', response.newToken);
            }
        });
    });
})( jQuery );