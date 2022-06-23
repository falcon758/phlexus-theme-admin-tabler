// Paginator listener
(function($) {
    /** Constant pagination ul */
    const paginationUL = 'ul.pagination';

    /** Constant pagination ul */
    const paginateA = 'a.paginate';

    /** Constant pagination target */
    const pageTarget = 'page-target';

    $(paginationUL + ' ' + paginateA).on('click', function () {
        if (this.classList.contains('active')) {
            return;
        }

        var href = new URL(window.location);
        href.searchParams.set('p', this.getAttribute(pageTarget));
        window.location.href = href.toString();
    });
})( jQuery );