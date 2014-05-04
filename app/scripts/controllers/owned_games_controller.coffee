Ludoplay.OwnedGamesIndexController = Ember.ArrayController.extend
  needs: ['gamesStats'],
  # The options that appear in the select box
  sortOptions: [
    { label: "Nom (asc)", value: "game.name:asc" },
    { label: "Nom (desc)", value: "game.name:desc" },
    { label: "Date d'achat (asc)", value: "acquiredAt:asc" },
    { label: "Date d'achat (desc)", value: "acquiredAt:desc" }
    { label: "Public (asc)", value: "game.public:asc" }
    { label: "Public (desc)", value: "game.public:desc" }
    { label: "Temps de jeu (asc)", value: "game.duration:asc" }
    { label: "Temps de jeu (desc)", value: "game.duration:desc" }
  ]
  # The currently selected sort option in the select box
  selectedSort: 'game.name:desc',

  sortProperties: null,
  sortAscending: null,

  # Fires whenever selectedSort changes.
  # Updates sortAscending / sortProperties to trigger reordering.
  selectedSortChanged: ( ->
    selected = this.get('selectedSort')

    sortAscending = (if selected then selected.split(':')[1] == 'asc' else false)
    this.set('sortAscending', sortAscending)

    sortProperties = [if selected then selected.split(':')[0] else false]
    this.set('sortProperties', sortProperties)
  ).observes('selectedSort', 'model')
