Ludoplay.PlayedGamesIndexController = Ember.ArrayController.extend
  games_count: (->
    @content.mapBy('game').uniq().length
  ).property('content.@each')

  games: (->
    @content.mapBy('game').uniq()
  ).property('content.@each')

  days: (->
    plays = []
    for i in [1..31]
      d = moment [2014, 2, i]
      set = this.content.filter (party) ->
        if party.get("played_at").isSame(d)
          true
      plays.push day: d, parties: set
    plays
  ).property('content.@each')
