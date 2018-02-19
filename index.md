---
layout: default
---
# Mathias
My name is Mathias. This is my personal website, which I use for various experiments. If you have something to tell me, please contact me below.

<h2>
	<!--<svg viewBox="0 0 24 24">
		<path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
	</svg>-->
	<span>Contact Me</span>
</h2>
<div id="sent">
	<p>
		<svg viewBox="0 0 24 24">
			<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
		</svg>
		Your message has been sent. Thank you for contacting me.
	</p>
</div>
<form action="/contact" method="post">
	<div id="fields">
		<div>
			<label for="email">E-mail:</label>
			<input id="email" type="email" name="email" required>
		</div>
		<div>
			<label for="message">Message:</label>
			<textarea id="message" name="message" rows="5" required></textarea>
		</div>
		<div>
			<label for="name">Leave this checkbox empty:</label>
			<input type="checkbox" name="tos" tabindex="-1" autocomplete="off">
		</div>
	</div>
	<button type="submit">Send</button>
</form>
