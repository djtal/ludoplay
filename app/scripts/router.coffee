Ludoplay.Router.map ->
  @resource 'parties', path: '/parties', ->
    @route 'play', path: 'play/:d/:m/:y'
  @resource 'ownedGames', path: '/mes-jeux'


Ludoplay.PartiesIndexRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'party'
  setupController: (controller, model) ->
    @_super controller, model
    controller.set('refDate', moment())
    @controllerFor('playedGames').set 'content', model


Ludoplay.PartiesPlayRoute = Ember.Route.extend
  renderTemplate: ->
    @render outlet: 'modal'

  setupController: (controller, model) ->
    @_super controller, model
    playedAt = moment([@context.y, @context.m - 1, @context.d])
    controller.set('playedAt', playedAt)
    controller.set 'newParties', [ {game: '', nbPlayer: '', playedAt: playedAt} ]
    @controllerFor('games').set 'content', @store.find('game')

Ludoplay.OwnedGamesRoute = Ember.Route.extend
  model: ->
    @store.find 'owned-game'
  setupController: (controller, model) ->
    @_super controller, model
    @controllerFor('gamesStats').set 'content', model
