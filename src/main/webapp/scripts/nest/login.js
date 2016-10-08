require(["nestui", "jquery"], function(nest, $) {
	var notification, data,
		loginFailed = $("#loginFailed");
	if (loginFailed.length){
		notification = $('.mdl-js-snackbar')[0];
		data = {
		  message: loginFailed.val(),
		  timeout: 10000
		};
		setTimeout(function () {
			notification.MaterialSnackbar.showSnackbar(data);
		}, 0);
	}
	nest.fouc();
});
