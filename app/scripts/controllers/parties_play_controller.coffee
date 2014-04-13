Ludoplay.PartiesPlayController = Ember.ObjectController.extend
  needs: ['games']
  selectedGame: null
  nbPlayer: null
  newParties: []
  playedAt: null
  refDateFormat: (->
    this.get('playedAt').format('dd D MMM YYYY')
  ).property('playedAt')
  actions:
    add: ->
      @newParties.addObject game: '', nbPlayer: ''

    cancel: ->
      @newParties.invoke 'deleteRecord'
      @transitionToRoute "/"

    save: ->
      store = @store
      d = @get('playedAt')
      @newParties.forEach (party) ->
        p = store.createRecord 'party', game: party.game, nbPlayer: party.nbPlayer, playedAt: d.toDate()
        p.save()
      @transitionToRoute "/"

