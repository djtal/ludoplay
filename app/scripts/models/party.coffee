Ludoplay.Party = DS.Model.extend
  nbPlayer: DS.attr()
  game: DS.belongsTo 'game'
  playedAt: DS.attr 'date'

Ludoplay.Party.FIXTURES = [
 {
   id: 1
   game: 1
   nbPlayer: 4,
   playedAt: moment("01-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 2
   game: 1
   nbPlayer:3
   playedAt: moment("01-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 3
   game: 1
   nbPlayer: 4
   playedAt: moment("01-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 4
   game: 2
   nbPlayer: 4
   playedAt:moment("01-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 5
   game: 2
   nbPlayer: 1
   playedAt: moment("01-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 6
   game: 2
   nbPlayer: 4
   playedAt: moment("14-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 7
   game: 2
   nbPlayer: 4
   playedAt: moment("14-04-2014", "DD-MM-YYYY").toDate()
 }
 {
   id: 8
   game: 2
   nbPlayer: 4
   playedAt: moment("15-04-2014", "DD-MM-YYYY").toDate()
 }
]
