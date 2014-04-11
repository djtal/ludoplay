Ludoplay.Router.map ->
  @resource 'playedGames', path: '/' , ->
    @route 'play'

Ludoplay.PlayedGamesIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'party'

Ludoplay.PlayedGamesPlayRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @_super controller, model
    controller.set 'newParties', [ {game: '', nbPlayer: ''} ]
    @controllerFor('games').set 'content', @store.find('game')


