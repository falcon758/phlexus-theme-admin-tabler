// Checkout listeners
(function($) {
    const copyElements = [
        'address',
        'post_code',
        'country'
    ];

    $('.card #same_address').on('change', function () {
        for (element in copyElements) {
            let elementName = copyElements[element];
            let secondElement = $('#' + elementName + '_' + 2);

            if (this.checked) {
                let firstElement = $('#' + elementName + '_' + 1);
                secondElement.val(firstElement.val());
            } else {
                secondElement.val('');
            }
        }
    });
})( jQuery );