---
layout: default
---
# Mathias
My name is Mathias. This is my personal website, which I use for various experiments. If you have something to tell me, you can contact me below.

## Contact Me
<div id="sent">
	<p>Your message has been sent. Thank you for contacting me.</p>
</div>
<form action="/contact" method="post">
	<div id="fields">
		<div>
			<label for="name">Name:</label>
			<input id="name" name="name">
		</div>
		<div>
			<label for="email">E-mail:</label>
			<input id="email" type="email" name="email" required>
		</div>
		<div>
			<label for="message">Message:</label>
			<textarea id="message" name="message" rows="5" required></textarea>
		</div>
	</div>
	<button type="submit">Send</button>
</form>
