Ludoplay.Party = DS.Model.extend({
  nbPlayer: DS.attr(),
  game: DS.belongsTo('game')
});
