'use strict'

Hapi = require('hapi')

# server = new Hapi.Server()
server = new Hapi.Server(app: require('../config'))

# server.connection port: 3000, host: 'localhost'
server.connection
  port: server.settings.app.port
  host: server.settings.app.host
  routes: cors: server.settings.app.cors


server.route
    method: 'GET',
    path: '/',
    handler: (request, reply)  => 
        reply('Hello, world!')

server.route
    method: 'GET',
    path: '/{name}',
    handler: (request, reply) => 
        reply('Hello, ' + encodeURIComponent(request.params.name) + '!')

server.start (err) => 
    if err then throw err
    console.log("Server running at: #{server.info.uri}")
