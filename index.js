'use strict';
/**
 * Boot coffeescript
 */
require('coffeescript/register');
/**
 *
 * pass thru app reference
 */
module.exports = require('./server/index.coffee');

