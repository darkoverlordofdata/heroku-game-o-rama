###
 * Basic routes
###
##
#   /
#   /about
#   /terms
#   /privacy
#
exports.register = (server, options, next) ->

  fs = require('fs')
  path = require('path')

  server.route [
    {
      method: 'GET'
      path: '/'
      config:
        id: 'index'
        handler: (request, reply) ->
          reply.view 'index',
            topHref: '/about'
            topButton: 'About'
          # server.methods.db.findAll 'Katra', (err, katras) ->
          #   server.methods.db.findAll 'Game', (err, games) ->
          #     reply.view 'index',
          #       topHref: '/about'
          #       topButton: 'About'
          #       katras: katras
          #       games: games

    }
    {
      method: 'GET'
      path: '/about'
      config:
        id: 'about'
        handler:
          view:
            template: 'about'
            context:
              topHref: '/'
              topButton: 'Home'


    }
    {
      method: 'GET'
      path: '/terms'
      config:
        id: 'terms'
        handler:
          view:
            template: 'terms'
            context:
              topHref: '/'
              topButton: 'Home'

    }
    {
      method: 'GET'
      path: '/privacy'
      config:
        id: 'privacy'
        handler:
          view:
            template: 'privacy'
            context:
              topHref: '/'
              topButton: 'Home'

    }

    {
      method: ['GET','POST']
      path: '/katra'
      config:
        handler:
          view: template: 'katra'

    }
  ]
  console.log "application registered"
  next()
  return

exports.register.attributes = name: 'default'
