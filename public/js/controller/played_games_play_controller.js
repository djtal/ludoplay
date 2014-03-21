Ludoplay.PlayedGamesPlayController = Ember.ArrayController.extend({
  needs: ['games'],
  selectedGame: null,
  nbPlayer: null,
  newParties: [],
  actions: {
    add: function(){
      this.newParties.addObject({game: '', nbPlayer: ''});
    },
    cancel: function(){
      this.newParties.invoke('deleteRecord');
      this.transitionToRoute("/")
    },
    save: function(){
      var store = this.store;
      this.newParties.forEach(function(party) {
        var p = store.createRecord('party', {
          game: party.game,
          nbPlayer: party.nbPlayer
        });
        p.save();
      });
      this.transitionToRoute("/")
    }
  }

});
