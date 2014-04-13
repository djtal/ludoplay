Ludoplay.PlayedGamesController = Ember.ArrayController.extend
  played: (->
    @content.mapBy('game').uniq()
  ).property('content.@each')

  games_count: (->
    @content.mapBy('game').uniq().length
  ).property('content.@each')
