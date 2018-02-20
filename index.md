---
layout: default
---
# Mathias
My name is Mathias. This is my personal website, which I use for various experiments. If you have something to tell me, please contact me below.

## Contact Me
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
			<label for="tos">Leave this checkbox empty:</label>
			<input id="tos" type="checkbox" name="tos" tabindex="-1">
		</div>
	</div>
	<button type="submit">Send</button>
</form>
