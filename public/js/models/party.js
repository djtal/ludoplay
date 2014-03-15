Ludoplay.Party = DS.Model.extend({
  nbPlayer: DS.attr('integer')
  game: DS.belongsTo('user')
});
