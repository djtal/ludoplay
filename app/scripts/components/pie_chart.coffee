Ludoplay.PieChartComponent = Ember.Component.extend
  classNames: ['chart'],

  chart: PieChart()
        .oneColor('#BE3600')
        .labelColor('white')
        .labelSize('11px')

  didInsertElement: ->
    Ember.run.once this, 'update'

  update: (->
    if @get('isLoaded')
      d3.select(@$()[0])
        .data([ @get('data') ])
        .call(@get('chart'))
  ).observes('data')

