exports.config =
  conventions:
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/vendor.js': /^bower_components/
        'js/app.js': /^app\/scripts/
      order:
        before: [
          'bower_components/jquery/jquery.js'
          'bower_components/momentjs/moment.js'
          'bower_components/handlebars/handlebars.js'
          'bower_components/ember/ember.js'
          'bower_components/ember-data/ember-data.js'
          'app/scripts/applications.js'
        ]
    templates:
      precompile: true  # default is false
      root: 'templates/'  # default is null
      defaultExtension: 'hbs'
      joinTo: 'js/app.js' : /^app/
    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor|bower_components)/
      before: [
          'bower_components/bootstrap/dist/css/bootstrap.min.css'
        ]
