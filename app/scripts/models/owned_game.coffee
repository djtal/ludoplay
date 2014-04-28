Ludoplay.OwnedGame = DS.Model.extend
  game: DS.belongsTo 'game', embedded: 'load'
  acquiredAt: DS.attr 'date'

Ludoplay.OwnedGame.FIXTURES = [
  {
    id: 1
    game: 1
    acquiredAt:moment().subtract('months', 1).toDate()
  }
  {
    id: 2
    game: 2
    acquiredAt:moment().subtract('months', 1).toDate()
  }
  {
    id: 3
    game: 3
    acquiredAt:moment().subtract('months', 8).toDate()
  }
  {
    id: 4
    game: 4
    acquiredAt:moment().subtract('months', 6).toDate()
  }
  {
    id: 5
    game: 6
    acquiredAt:moment().subtract('years', 1).toDate()
  }
  {
    id: 6
    game: 7
    acquiredAt:moment().subtract('years', 1).toDate()
  }
]
