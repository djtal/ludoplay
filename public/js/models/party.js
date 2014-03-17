Ludoplay.Party = DS.Model.extend({
  nbPlayer: DS.attr(),
  game: DS.belongsTo('game'),
  played_at: DS.attr('date')
});

Ludoplay.Party.FIXTURES = [
 {
   id: 1,
   game: 1,
   nbPlayer: 4,
   played_at: moment("01-03-2014", "DD-MM-YYYY")
 },
 {
   id: 2,
   game: 1,
   nbPlayer:3,
   played_at: moment("01-03-2014", "DD-MM-YYYY")
 },
 {
   id: 3,
   game: 1,
   nbPlayer: 4,
   played_at: moment("01-03-2014", "DD-MM-YYYY")
 },
 {
   id: 4,
   game: 2,
   nbPlayer: 4,
   played_at: moment("01-03-2014", "DD-MM-YYYY")
 },
 {
   id: 5,
   game: 2,
   nbPlayer: 1,
   played_at: moment("01-03-2014", "DD-MM-YYYY")
 }
];
