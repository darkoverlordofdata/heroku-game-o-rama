"use strict"
Promise = require('promise')

module.exports =
  up: (queryInterface, Sequelize, done) ->

    data = [
      {
        active: true
        name: 'ShmupWarz'
        slug: 'shmupwarz'
        url: 'https://darkoverlordofdata.com/zerog-shmupwarz'
        leaderboard: true
        queue: 'https://shmupwarz.firebaseio.com/scores/'
        token: 'SHMUPWARZ_D16A'
        author: 'darkoverlordofdata'
        description: "Give Me Those ShmupWarz"
        version: '0.0.1'
        icon: 'favicon.png'
        main: 'index.html'
        height: 600
        width: 800
        createdAt: Date.now()
        updatedAt: 0
      }
    ]
    Games = queryInterface.sequelize.models.Game
    Games.sync()
    .then ->
      Promise.all(data.map(Games.create))
      .then ->
        done()

  down: (queryInterface, Sequelize, done) ->
