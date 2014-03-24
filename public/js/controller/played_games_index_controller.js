Ludoplay.PlayedGamesIndexController = Ember.ArrayController.extend({
  games_count: function() {
    return this.content.mapBy('game').uniq().length;
  }.property('content.@each'),

  games: function(){
    return this.content.mapBy('game').uniq();
  }.property('content.@each')
});
