(function($) {
    cookieconsent.initialise({
        palette: {
            popup: {
                background: '#000',
                text: '#fff' 
            },
            button: {
                background: '#838391',
                text: '#ffffff'
            },
        },
        content: {
            message: 'We use cookies. Please go to Cookies Page for more information.',
            link: 'Cookies Page',
            href: '/cookie-policy',
            dismiss: 'Understood',
            target: '_blank'
        }
    });
})(jQuery);
