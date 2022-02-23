(function($) {
    const flashContainer = $('#flash-messages');

    const messageValidator = RegExp('^[a-zA-Z0-9\\s]+$');

	let flashController = function() {
		return {
			clearAll: function() {
                flashContainer.empty();
            },
            
            clear: function(flash) {
                flash.remove();
            },
            
            setClearTimer: function(flash) {
                setTimeout(this.clear, 10000, flash);
            },
            
            flashAdd: function(message, type) {
                let divClass = 'alert';
            
                switch (type) {
                    case 'error':
                        divClass += ' alert-danger';
                        break;
                    case 'warning':
                        divClass += ' alert-warning';
                        break;
                    case 'notice':
                        divClass += ' alert-info';
                        break;
                    case 'success':
                        divClass += ' alert-success';
                        break;
                    default:
                        divClass += ' alert-danger';
                        break;
                }

                if (message.match(messageValidator) !== null) {
                    let flash = $('<div></div>').text(message).addClass(divClass);
                    flashContainer.append(flash);
                    this.setClearTimer(flash);
                }
            }
		};

	};

	$.fn.flashMessage = function() {
		let flashMessage = new flashController();
        return flashMessage;
	};

})(jQuery);