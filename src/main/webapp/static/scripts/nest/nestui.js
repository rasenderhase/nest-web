/**
 * @license nest Copyright (c) 2010-2016, nikem GmbH All Rights Reserved.
 */
define("nestui", ["nest", "jquery"], function(nest, $) {
	
	nest.initSnackbar = function () {
		var notification, data,
		message = $("#snackMessage").val();
		
		if (message && message.length){
			data = {
			  message: message,
			  timeout: 4000
			};
			setTimeout(function () {
				notification = $('.mdl-js-snackbar')[0];
				notification.MaterialSnackbar.showSnackbar(data);
			}, 0);
		}		
	};
	$(nest.initSnackbar);
	
	return nest;
});
