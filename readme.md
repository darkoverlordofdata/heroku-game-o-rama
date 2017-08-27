# Game*O*Rama

A cms/portal to display my static gh-pages on Facebook

Moved backend from openshift to heroku

Components:

* Coffeescript (stable)
* Hapi (latest)
* Liquid.coffee Templates (latest)
* MemCache (latest)
* Redis (latest)
* Firebase (v2 legacy api)
* Sequelize (v2 legacy api)
* Ormfire

Configuration is saved in firebase. The database piece was made before the aquisition of Firebase by Google, so it uses a legacy api. It should probably use a service account under v4.

Leaderboard data is kept in Redis.


