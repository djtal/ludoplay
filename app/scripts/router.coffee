Ludoplay.Router.map ->
  @resource 'parties', path: '/parties/:m/:y', ->
    @route 'play', path: 'parties/play/:d/:m/:y'


Ludoplay.IndexRoute = Ember.Route.extend
  beforeModel:  ->
    now = moment()
    @transitionTo('parties.index', {m: now.month(), y: now.year()})

Ludoplay.PartiesIndexRoute = Ember.Route.extend
  model: (params) ->
    refDate = moment([params.y, params.m , 1])
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


