Ludoplay.PlayedGamesIndexController = Ember.ArrayController.extend({
  games_count: function() {
    return this.content.mapBy('game').uniq().length;
  }.property('content.@each'),

  games: function(){
    return this.content.mapBy('game').uniq();
  }.property('content.@each'),

  days: function() {
    var plays = [];
    for (var i = 1; i < 31; i++) {
      var d = moment([2014, 2, i])
      var set = this.content.filter(function(party){
        if (party.get("played_at").isSame(d)) {
          return true;
        }
      });
      plays.push({day: d, parties: set});
    }
    return plays;
  }.property('content.@each')
});
