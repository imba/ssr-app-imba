import express from 'express'
import {App} from './app'

const srv = express!

srv.get(/.*/) do(req,res)
	let html = <html>
		<head>
			<title> "Application"
			# generate stylesheet for the ./app entrypoint
			<style src='./app'>
		<body>
			# just render the App tag - routing happens inside
			<App>

	res.end(String(html))

imba.serve srv.listen(process.env.PORT or 3000)