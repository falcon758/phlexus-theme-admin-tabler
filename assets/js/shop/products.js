// Products listeners
(function($) {
    $('.card .product-buy').on('click', function () {
        const row = $(this).parents('.row-cards');
        const route = $(this).attr('buy-route');
        const csrf = row.attr('csrf-token');

        $.post(route, 'csrf=' + csrf, function(response) {
            console.log(response);
            if(response.status === 1) {
                $.fn.flashMessage().flashAdd(response.message, 'success');
                row.remove();
            } else {
                $.fn.flashMessage().flashAdd(response.message, 'error');
            }
        });
    });
})( jQuery );