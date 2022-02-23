// Products listeners
(function($) {
    $('.card .product-buy').on('click', function () {
        const row = $(this).parents('.row-cards');
        const route = $(this).attr('buy-route');
        const csrf = row.attr('csrf-token');

        $.post(route, 'csrf=' + csrf, function(response) {
            console.log(response);

            let responseStatus = response.success === true ? 'success' : 'error';
            $.fn.flashMessage().flashAdd(response.message, responseStatus);
        });
    });
})( jQuery );