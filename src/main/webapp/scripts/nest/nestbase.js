/**
 * @license nest Copyright (c) 2010-2016, nikem GmbH All Rights Reserved.
 */
define("nest", ["jquery"], function($) {
	return {
		/**
		 * make body element visible
		 */
		fouc : function () {
			$("body").css("display", "");
		},

		Ws : function (options) {
			var ws, closeHandler;

			closeHandler = $.proxy(function (event) {
				if (options.onconnectionbroken) {
					options.onconnectionbroken();
				}
				try {
					ws.close();
					ws.onerror = null;
					ws.onclose = null;
					ws.onopen = null;
					ws.onmessage = null;
					ws = null;
				} catch (error) { }
				try {
					clearTimeout(t);				
				} catch (error) { }
				t = setTimeout($.proxy(this.init, this), 3000);
			}, this);

			this.init = function () {
				ws = new WebSocket(options.uri);

				ws.onerror = closeHandler;
				ws.onclose = closeHandler;
				ws.onopen = $.proxy(function (evt) {
					console.log(evt);
				}, this);

				ws.onmessage = $.proxy(options.onmessage, this);

			};

			this.send = function (message) {
				if (ws) {
					ws.send(message);
					console.log("sent message");
				} else {
					console.log("no connection");
				}
			}

			this.ping = function () {
				try {
					ws.send("ping");
					if (ws.readyState !== 1) {
						closeHandler();
					}
				} catch (error) {
					closeHandler();
				}
			};
			setInterval(this.ping, 5000);
		}
	}
});
