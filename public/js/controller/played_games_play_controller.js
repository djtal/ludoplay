Ludoplay.PlayedGamesPlayController = Ember.ObjectController.extend({
  needs: ['games'],
  selectedGame: null,
  nbPlayer: null,
  actions: {

    save: function(){
      var party = this.store.createRecord('party', {
        game: this.selectedGame,
        nbPlayer: this.nbPlayer
      });
      party.save();
    }
  }

});
