Ludoplay.PlayedGamesPlayController = Ember.ArrayController.extend({
  needs: ['games'],
  selectedGame: null,
  nbPlayer: null,
  newParties: [],
  actions: {
    add: function(){
      this.newParties.addObject(this.store.createRecord('party', {}));
    },
    save: function(){
      var party = this.store.createRecord('party', {
        game: this.selectedGame,
        nbPlayer: this.nbPlayer
      });
      party.save();
    }
  }

});
