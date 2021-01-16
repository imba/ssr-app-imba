import {App} from './app'
import http from 'http'

const handler = do(req,res)
	res.end "" + <html>
		<head> <title> "Application"
		<body>
			<script type='module' src='./app'>
			<App>

imba.serve http.createServer(handler).listen(process.env.PORT or 3000)