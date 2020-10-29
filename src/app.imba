export tag App
	def render
		<self>
			<div> "Welcome!"
			<div> "Url is {document.location.href}"

			<header[d:hflex]>
				<a href="/home"> "Home"
				<a href="/about"> "About"

			<div route="/home">
				<div> "Welcome"
				<a href="/about"> "About"
			<div route="/about">
				<div> "About us"
				<a href="/home"> "Home"