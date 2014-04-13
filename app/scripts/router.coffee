Ludoplay.Router.map ->
  @resource 'parties', path: '/' , ->
    @route 'play'

Ludoplay.PartiesIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'party'
  setupController: (controller, model) ->
    @_super controller, model
    controller.set('refDate', moment())


Ludoplay.PartiesPlayRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @_super controller, model
    controller.set 'newParties', [ {game: '', nbPlayer: ''} ]
    @controllerFor('games').set 'content', @store.find('game')


