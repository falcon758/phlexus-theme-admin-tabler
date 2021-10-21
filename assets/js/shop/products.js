// Products listeners
(function($) {
    $('.card .product-buy').on('click', function () {
        const row = $(this).parents('.row-cards');
        //const productID = row.find('.product').attr('product-id');

        const route = $(this).attr('buy-route');
        const csrf = row.attr('csrf-token');

        $.post(route, 'csrf=' + csrf, function(response) {
            if(response.status === 1) {
                row.remove();
            }
        });
    });
})( jQuery );