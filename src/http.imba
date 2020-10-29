import 'imba/router'

import {App} from './app'
const http = require 'http'
const port = 2345

const handler = do(req,res)
	imba.run do
		let url = (req.protocol or 'http') + "://" + req.headers.host + req.url
		# set document.location for router to work
		document.location = url
		# document is a unique global in the execution context of imba.run
		# coercing the dom to string when sending
		res.end "" + <html>
			<head> <title> "Application"
			<body> <App>

http.createServer(handler).listen(port) do
	console.log "Listening on port {port}"