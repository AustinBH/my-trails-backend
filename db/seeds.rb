# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: 'Seattle', latitude: '47.6062', longitude: '-122.3321')
Location.create(name: 'Crescent Lake', latitude: '48.0582', longitude: '-123.8132')
Location.create(name: 'Mount Rainier', latitude: '46.8523', longitude: '-121.7603')
Location.create(name: 'Diablo Lake', latitude: '48.7122', longitude: '-121.1133')
Location.create(name: 'Spokane', latitude: '47.6588', longitude: '-117.4260')