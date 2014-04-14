Ludoplay.PartiesIndexController = Ember.ArrayController.extend
  needs: ['playedGames'],
  refDate: null,

  weekDays: (->
    moment.weekdays()
  ).property()

  month: (->
    this.get('refDate').format('MMMM')
  ).property('refDate')

  parties_count: (->
    @content.get("length")
  ).property('content.@each')

  prevMonth: (->
    date = moment(@get('refDate')).subtract('months', 1)
    { month: date.month(), year: date.year() }
  ).property('refDate')

  nextMonth: (->
    date = moment(@get('refDate')).add('months', 1)
    { month: date.month(), year: date.year() }
  ).property('refDate')

  weeks: (->
    plays = []
    for i in [1..31]
      d = moment [@get('refDate').year(), @get('refDate').month(), i]
      set = @content.filter (party) ->
        if moment(party.get("playedAt")).isSame(d)
          true
      plays.push day: d, parties: set, date: { d: d.format('D'), m: d.format('M'),  y: d.format('YYYY')  }
    weeks= []
    l = plays.length
    i = 0
    taken = 0
    while i <  l
      weeks.push plays.slice(i, if i + 7 < l then i + 7 else l)
      i += 7
    weeks
  ).property('content.@each')


