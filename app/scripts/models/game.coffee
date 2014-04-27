Ludoplay.Game = DS.Model.extend
  name: DS.attr 'string'
  public: DS.attr 'string'
  minPlayer: DS.attr 'integer'
  maxPlayer: DS.attr 'integer'
  duration: DS.attr 'integer'
  public_name: (->
    names = {
      0: 'Enfant'
      1: 'Tous public'
      2: ''
      3: 'Connaisseurs'
      4: 'Passionés'
    }
    names[this.get('public')]
  ).property('public')
  playTime: (->
    d = moment.duration(this.get('duration'))
    "#{String("00" + d.hours()).slice(-2)}:#{String("00" + d.minutes()).slice(-2)}"
  ).property('duration')

Ludoplay.Game.FIXTURES = [
 {
   id: 1
   name: 'Pandemie'
   public: 1
   duration: moment.duration(30, 'minutes').as('milliseconds')
   minPlayer: 2
   maxPlayer: 4
 },
 {
   id: 2
   name: 'Zombicide'
   public: 1
   duration: moment.duration(60, 'minutes').as('milliseconds')
   minPlayer: 1
   maxPlayer: 6
 },
 {
   id: 3
   name: 'Goa'
   duration: moment.duration(90, 'minutes').as('milliseconds')
   public: 3
   minPlayer: 2
   maxPlayer: 6
 }
 {
   id: 4
   name: 'Descent'
   duration: moment.duration(120, 'minutes').as('milliseconds')
   public: 4
   minPlayer: 2
   maxPlayer: 6
 }
 {
   id: 5
   name: 'Les aventuriers du rails'
   public: 1
   duration: moment.duration(60, 'minutes').as('milliseconds')
   minPlayer: 2
   maxPlayer: 5
 }
 {
   id: 6
   name: 'Les princes de Florence'
   public: 3
   duration: moment.duration(90, 'minutes').as('milliseconds')
   minPlayer: 3
   maxPlayer: 5
 }
 {
   id: 7
   name: 'Galaxy Trucker'
   public: 3
   duration: moment.duration(60, 'minutes').as('milliseconds')
   minPlayer: 3
   maxPlayer: 5
 }
]
