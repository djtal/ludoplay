Ludoplay.Router.map ->
  @resource 'parties', path: '/' , ->
    @route 'play', path: 'parties/play/:d/:m/:y'

Ludoplay.PartiesIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'party'
  setupController: (controller, model) ->
    @_super controller, model
    controller.set('refDate', moment())
    @controllerFor('playedGames').set 'content', @store.find('party')


Ludoplay.PartiesPlayRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @_super controller, model
    playedAt = moment([@context.y, @context.m - 1, @context.d])
    controller.set('playedAt', playedAt)
    controller.set 'newParties', [ {game: '', nbPlayer: '', playedAt: playedAt} ]
    @controllerFor('games').set 'content', @store.find('game')


