Ludoplay.Router.map(function() {
  this.resource('playedGames', { path: '/' }, function(){
    this.route('play');
  });
});

Ludoplay.PlayedGamesIndexRoute = Ember.Route.extend({
  model: function(){
    return this.store.find('party');
  }
})

Ludoplay.PlayedGamesPlayRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    this._super(controller, model);
    controller.set('newParties', [ {game: '', nbPlayer: ''}]);
    this.controllerFor('games').set('content', this.store.find('game'));
  }
});

