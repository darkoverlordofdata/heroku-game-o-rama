###
 * Cache
 *
 * Server Methods
 *
 *  Use MemCashier for custom cacheing
 *
###
##
#
#
#
exports.register = (server, options, next) ->

  memjs = require('memjs')
  cache = memjs.Client.create(process.env.MEMCACHEDCLOUD_SERVERS, {
    username: process.env.MEMCACHEDCLOUD_USERNAME,
    password: process.env.MEMCACHEDCLOUD_PASSWORD
  })

  server.method
    name: 'cache.get'
    method: (key, next) -> cache.get(key, next)

  server.method
    name: 'cache.set'
    method: (key, value, next) -> cache.set(key, value, next)

  server.method
    name: 'cache.flush'
    method: (next) -> cache.flush(next)

  server.method
    name: 'cache.stats'
    method: (next) -> cache.stats(next)


  console.log "memjs registered"
  next()
  return

exports.register.attributes = name: 'cache'
