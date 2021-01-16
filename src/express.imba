import express from 'express'
import {App} from './app'

const srv = express!

srv.get(/.*/) do(req,res)
	let html = <html>
		<head>
			<title> "Application"
		<body>
			<script type='module' src='./app'>
			<App>

	res.end(String(html))

imba.serve srv.listen(process.env.PORT or 3000)