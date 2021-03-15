// Action listeners
(function($) {
    $('.item-action .delete-item').on('click', function () {
        let recordId = $(this).parents('tr').attr('record-id');

        if(confirm('Are you sure you want do delete id: ' + recordId)) {
            $.post($(this).attr('delete-route'));
        }
    });
})( jQuery );