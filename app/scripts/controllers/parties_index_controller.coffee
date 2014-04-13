Ludoplay.PartiesIndexController = Ember.ArrayController.extend
  needs: ['playedGames'],
  refDate: null,

  month: (->
    this.get('refDate').format('MMMM')
  ).property('refDate')

  parties_count: (->
    @content.get("length")
  ).property('content.@each')

  days: (->
    plays = []
    for i in [1..31]
      d = moment [2014, 2, i]
      set = @content.filter (party) ->
        if party.get("played_at").isSame(d)
          true
      plays.push day: d, parties: set
    plays
  ).property('content.@each')

  weeks: (->
    weeks= []
    l = @get('days').length
    i = 0
    taken = 0
    while i <  l
      weeks.push @get('days').slice(i, if i + 7 < l then i + 7 else l)
      i += 7
    weeks
  ).property('content.@each')


