Ember.Handlebars.helper('formatDate', function(date){
  return moment(date).fromNow();
});
Ember.Handlebars.helper('formatDateWith', function(date, format) {
  return moment(date.day).format(format);
});
