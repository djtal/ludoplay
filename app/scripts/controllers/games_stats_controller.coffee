Ludoplay.GamesStatsController = Ember.ArrayController.extend
  data: (->
    # d = {}
    # @content.mapBy('game').forEach (game) ->
    #   o = d[game.get('public_name')] ?= { category: game.get('public_name'), count: 0}
    #   o.count += 1
    # d
    [{ categorie: "Tous public", count: 10}, { category: "Enfant", count: 4},{ category: "Connaisseur", count: 2},{ category: "Passionés", count: 20}]

  ).property('content.@each')
