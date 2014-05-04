Ludoplay.OwnedGamesAddController = Ember.ObjectController.extend
  needs: ['games']

  actions:
    save: ->
      owned = @get('model')
      owned.save()
      @transitionToRoute  'ownedGames'

    cancel: ->
      owned = @get('model')
      owned.deleteRecord()
      @transitionToRoute  'ownedGames'
