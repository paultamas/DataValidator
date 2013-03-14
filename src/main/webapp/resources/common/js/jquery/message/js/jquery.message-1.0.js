/*
 * jQuery message plug-in 1.0
 *
 * http://bassistance.de/jquery-plugins/jquery-plugin-message/
 *
 * Copyright (c) 2009 Jörn Zaefferer
 *
 * $Id: jquery.message.js 6407 2009-06-19 09:07:26Z joern.zaefferer $
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */
(function($) {
	var helper,
		visible,
		timeout1,
		timeout2;
	
	$.fn.message = function(message,isError) {
		message = $.trim(message || this.text());
		if (!message) {
			return;
		}
		clearTimeout(timeout1);
		clearTimeout(timeout2);
		
		initHelper(isError);
		helper.find("p").html(message);
		helper.show().animate({ opacity: $.message.defaults.opacity}, $.message.defaults.fadeInDuration);
		visible = true;
		active = false;
		timeout1 = setTimeout(function() {
			visible = false;
		}, $.message.defaults.minDuration + $.message.defaults.displayDurationPerCharacter * Math.sqrt(message.length));
		timeout2 = setTimeout(fadeOutHelper, $.message.defaults.totalTimeout);
	};
	
	function initHelper(isError) {
		if (!helper) {
			helper = $($.message.defaults.template).appendTo(document.body);
			$(window).bind("mousemove click keypress", fadeOutHelper);
		}
		helper[isError ? 'addClass' : 'removeClass']('jquery-error');
	}
	
	function fadeOutHelper() {
		if (helper.is(":visible") && !helper.is(":animated") && !visible) {
			helper.animate({ opacity: 0 }, $.message.defaults.fadeOutDuration, function() { $(this).hide()})
		}
	}
	
	$.message = {};
	$.message.defaults = {
		opacity: 0.8,
		fadeOutDuration: 500,
		fadeInDuration: 200,
		displayDurationPerCharacter: 125,
		minDuration: 2500,
		totalTimeout: 6000,
		template: '<div class="jquery-message"><div class="round"></div><p></p><div class="round"></div></div>'
	}
})(jQuery);
