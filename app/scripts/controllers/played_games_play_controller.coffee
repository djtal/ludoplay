Ludoplay.PlayedGamesPlayController = Ember.ArrayController.extend
  needs: ['games'],
  selectedGame: null,
  nbPlayer: null,
  newParties: [],
  actions:
    add: ->
      @newParties.addObject game: '', nbPlayer: ''

    cancel: ->
      @newParties.invoke 'deleteRecord'
      @transitionToRoute "/"

    save: ->
      store = @store
      @newParties.forEach (party) ->
        p = store.createRecord 'party', game: party.game, nbPlayer: party.nbPlayer
        p.save()
      @transitionToRoute "/"

