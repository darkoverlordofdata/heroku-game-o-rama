###
 * Cache
 *
 * Hapi managed cache
 *
 *  Use In Memory + Memcached for Hapi managed cache
 *
###
##
#
#
#
memcached = if process.env.MEMCACHEDCLOUD_SERVERS? 
  process.env.MEMCACHEDCLOUD_USERNAME+':'+process.env.MEMCACHEDCLOUD_PASSWORD+'@'+process.env.MEMCACHEDCLOUD_SERVERS
else
  'localhost:11211'

module.exports = [
  {
    engine: require('catbox-memory')
  }
  {
    name: 'cloud'
    engine: require('catbox-memjs')
    location: memcached
  }
]
