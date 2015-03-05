  users = User.create([{ name: 'Alice' }, { name: 'Bob' }])
  t1 = Tile.create(title: 'Favorites', user_id: users.first)
  t2 = Tile.create(title: 'New Project', user_id: users.first)

  Link.create(description: 'First link', url: 'example.com', tile_id: t1)
  Link.create(description: 'Second link', url: 'example.com', tile_id: t1)
  Link.create(description: 'Third link', url: 'example.com', tile_id: t1)
