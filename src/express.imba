import 'imba/router'
import {App} from './app'

const port = 2345
const express = require 'express'
const srv = express!

srv.use do(req,res,next)
	imba.run do
		# all code running for the remainder of this async execution context
		# will access unique imba, window, and document globals.
		# Ie. you can safely set imba.user = ... and it will not be accessible
		# to any other requests.

		# we extract the full url from the request and set document.location
		# to make the router work correctly
		let url = req.protocol + "://" + req.get('host') + req.originalUrl
		document.location = url
		# not used now, but it will allow you to access the raw request
		# through imba.request even deep inside any tag rendering here.
		imba.request = req
		next!

srv.get(/.*/) do(req,res)
	let html = <html>
		<head> <title> "Application"
		<body> <App>

	res.end(String(html))

srv.listen(port) do
	console.log "Server started - listening on port {port}"