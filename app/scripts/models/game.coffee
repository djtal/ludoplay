Ludoplay.Game = DS.Model.extend
  name: DS.attr 'string'
  minPlayer: DS.attr 'integer'
  maxPlayer: DS.attr 'integer'

Ludoplay.Game.FIXTURES = [
 {
   id: 1
   name: 'Pandemie'
   minPlayer: 2
   maxPlayer: 4

 },
 {
   id: 2
   name: 'Zombicide'
   minPlayer: 1
   maxPlayer: 6
 },
 {
   id: 3
   name: 'Goa'
   minPlayer: 2
   maxPlayer: 6
 }
]
