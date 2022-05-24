// Paginator listener
(function($) {
    /** Constant pagination ul */
    const PAGINATION_UL = 'ul.pagination';

    /** Constant pagination ul */
    const PAGINATE_A = 'a.paginate';

    /** Constant pagination target */
    const PAGE_TARGET = 'page-target';

    $(PAGINATION_UL + " " + PAGINATE_A).on('click', function () {
        if (this.classList.contains('active')) {
            return;
        }

        var href = new URL(window.location);
        href.searchParams.set('p', this.getAttribute(PAGE_TARGET));
        window.location.href = href.toString();
    });
})( jQuery );