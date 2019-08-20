My Trails Backend

This API is used for a trail finder app. Images are integrated with AWS S3 to allow users to upload their own hiking images. This API will respond to calls from the My Trails app frontend but will not allow requests from other sources.

Example Routes

There are still several routes which will return data, the trails, locations, and avatars routes will all return data.

  - Trails
    - Location Search
      - Example Route: https://my-trails-backend.herokuapp.com/api/v1/trails-by-location?lat=40.0274&lon=-105.2519
      - This route will return trail data based on latitude and longitudinal coordinates
    - Ids Search
      - Example Route: https://my-trails-backend.herokuapp.com/api/v1/trails-by-ids?ids=7015435,7011234,7011187
      - This route will return trail data based on their ids in the Hiking Project API
  - Locations
    - Example Route: https://my-trails-backend.herokuapp.com/api/v1/locations
    - This route will return location data, a location name, the coordinates, the state, and the city name.
  - Avatars
    - Example Route: https://my-trails-backend.herokuapp.com/api/v1/avatars
    - This route will return avatar data, an image url, and a shorthand name for the avatar image.

Thank You!

 - REI's Hiking Project
   - Their API has been an absoloute pleasure to work with and I am so glad that I was able to integrate it into this application.