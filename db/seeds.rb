# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(name: 'Seattle', latitude: '47.608013', longitude: '-122.335167', state: 'WA')
Location.create(name: 'Lake Crescent', latitude: '48.0589758', longitude: '-123.8149216', state: 'WA')
Location.create(name: 'Mount Rainier', latitude: '46.879967', longitude: '-121.726906', state: 'WA')
Location.create(name: 'Diablo Lake', latitude: '48.708497166', longitude: '-121.125332832', state: 'WA')
Location.create(name: 'Spokane', latitude: '47.658779', longitude: '-117.426048', state: 'WA')
Location.create(name: 'Portland', latitude: '45.523064', longitude: '-122.676483', state: 'OR')
Location.create(name: 'San Diego', latitude: '32.715736', longitude: '-117.161087', state: 'CA')
Location.create(name: "Coeur d'Alene", latitude: '47.6776832', longitude: '-116.7804664', state: 'ID')
Location.create(name: 'Lake Tahoe', latitude: '39.096848', longitude: '-120.032349', state: 'NV')
Location.create(name: 'Sedona', latitude: '34.871002', longitude: '-111.760826', state: 'AZ')
Location.create(name: 'Zion National Park', latitude: '37.317207', longitude: '-113.022537', state: 'UT')
Location.create(name: 'Missoula', latitude: '46.8787176', longitude: '-113.996586', state: 'MT')
Location.create(name: 'Yellowstone National Park', latitude: '44.446037', longitude: '-110.587349', state: 'WY')
Location.create(name: 'Denver', latitude: '39.742043', longitude: '-104.991531', state: 'CO')
Location.create(name: 'Albuquerque', latitude: '35.106766', longitude: '-106.629181', state: 'NM')
Location.create(name: 'Fargo', latitude: '46.877186', longitude: '-96.789803', state: 'ND')
Location.create(name: 'Sioux Falls', latitude: '43.536388', longitude: '-96.731667', state: 'SD')
Location.create(name: 'Omaha', latitude: '41.257160', longitude: '-95.995102', state: 'NE')
Location.create(name: 'Wichita', latitude: '37.697948', longitude: '-97.314835', state: 'KS')
Location.create(name: 'Tulsa', latitude: '36.153980', longitude: '-95.992775', state: 'OK')
Location.create(name: 'Austin', latitude: '30.266666', longitude: '-97.733330', state: 'TX')
Location.create(name: 'Minneapolis', latitude: '44.986656', longitude: '-93.258133', state: 'MN')
Location.create(name: 'Des Moines', latitude: '41.619549', longitude: '-93.598022', state: 'IA')
Location.create(name: 'Kansas City', latitude: '39.099724', longitude: '-94.578331', state: 'MO')
Location.create(name: 'Little Rock', latitude: '34.746483', longitude: '-92.289597', state: 'AR')
Location.create(name: 'New Orleans', latitude: '29.951065', longitude: '-90.071533', state: 'LA')
Location.create(name: 'Green Bay', latitude: '44.513332', longitude: '-88.015831', state: 'WI')
Location.create(name: 'Chicago', latitude: '41.881832', longitude: '-87.623177', state: 'IL')
Location.create(name: 'Louisville', latitude: '38.328732', longitude: '-85.764771', state: 'KY')
Location.create(name: 'Nashville', latitude: '36.174465', longitude: '-86.767960', state: 'TN')
Location.create(name: 'Jackson', latitude: '32.298756', longitude: '-90.184807', state: 'MS')
Location.create(name: 'Tuscaloosa', latitude: '33.189281', longitude: '-87.565155', state: 'AL')
Location.create(name: 'Traverse City', latitude: '44.7630567', longitude: '-85.6206317', state: 'MI')
Location.create(name: 'Indianapolis', latitude: '39.791000', longitude: '-86.148003', state: 'IN')
Location.create(name: 'Cleveland', latitude: '41.505493', longitude: '-81.681290', state: 'OH')
Location.create(name: 'Harpers Ferry', latitude: '39.321832046', longitude: '-77.739497042', state: 'WV')
Location.create(name: 'Williamsburg', latitude: '37.2707022', longitude: '-76.7074571', state: 'VA')
Location.create(name: 'Asheville', latitude: '35.5950581', longitude: '-82.5514869', state: 'NC')
Location.create(name: 'Charleston', latitude: '32.776566', longitude: '-79.930923', state: 'SC')
Location.create(name: 'Blue Ridge', latitude: '34.866215', longitude: '-84.326248', state: 'GA')
Location.create(name: 'Tallahassee', latitude: '30.455000', longitude: '-84.253334', state: 'FL')
Location.create(name: 'Baltimore', latitude: '39.299236', longitude: '-76.609383', state: 'MD')
Location.create(name: 'Winterthur', latitude: '39.794396', longitude: '-75.597598', state: 'DE')
Location.create(name: 'Newark', latitude: '40.735657', longitude: '-74.172363', state: 'NJ')
Location.create(name: 'Pittsburgh', latitude: '40.440624', longitude: '-79.995888', state: 'PA')
Location.create(name: 'New York City', latitude: '40.730610', longitude: '-73.935242', state: 'NY')
Location.create(name: 'Bridgeport', latitude: '41.186390', longitude: '-73.195557', state: 'CT')
Location.create(name: 'Providence', latitude: '41.825226', longitude: '-71.418884', state: 'RI')
Location.create(name: 'Boston', latitude: '42.361145', longitude: '-71.057083', state: 'MA')
Location.create(name: 'Manchester', latitude: '43.008663', longitude: '-71.454391', state: 'NH')
Location.create(name: 'Burlington', latitude: '44.475883', longitude: '-73.212074', state: 'VT')
Location.create(name: 'Portland', latitude: '43.633192', longitude: '-70.185644', state: 'ME')
Location.create(name: 'Anchorage', latitude: '61.217381', longitude: '-149.863129', state: 'AK')
Location.create(name: 'Honolulu', latitude: '21.315603', longitude: '-157.858093', state: 'HI')

Avatar.create(img_url: 'https://img.icons8.com/color/2x/trekking.png', name: 'hiker')
Avatar.create(img_url: 'https://img.icons8.com/doodle/2x/moose.png', name: 'moose')
Avatar.create(img_url: 'https://img.icons8.com/color/2x/bear.png', name: 'bear')
Avatar.create(img_url: 'https://img.icons8.com/color/2x/dog.png', name: 'dog')
Avatar.create(img_url: 'https://img.icons8.com/dusk/2x/cat.png', name: 'cat')
Avatar.create(img_url: 'https://img.icons8.com/officel/2x/kiwi-bird.png', name: 'kiwi')
Avatar.create(img_url: 'https://img.icons8.com/color/2x/mouse-animal.png', name: 'mouse')
Avatar.create(img_url: 'https://img.icons8.com/color/2x/pig.png', name: 'pig')
Avatar.create(img_url: 'https://img.icons8.com/color/2x/fox.png', name: 'fox')
Avatar.create(img_url: 'https://img.icons8.com/officel/2x/deer.png', name: 'deer')

counter_1 = 1
counter_2 = 1

while counter_1 < 11 do
    User.create(username: "Example#{counter_1}", password: '123', avatar_id: counter_1, distance: 20, results: 20)
    counter_1 += 1
end

while counter_2 < 11 do
    Comment.create(user_id: counter_2, trail_id: 7047354, content: 'Good Hike')
    Like.create(user_id: counter_2, trail_id: 7047354)
    CompletedHike.create(user_id: counter_2, trail_id: 7047354)
    counter_2 += 1
end
