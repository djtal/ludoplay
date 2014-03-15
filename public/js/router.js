Ludoplay.Router.map(function() {
  this.resource('playedGames', { path: '/' }, function(){
    this.route('play');
  });
});

Ludoplay.PlayedGamesPlayRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    this._super(controller, model);
    this.controllerFor('games').set('content', this.store.find('game'));
  }
});

