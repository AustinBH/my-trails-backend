# My Trails Backend

The frontend application is currently functional and can be found at: https://my-trails.herokuapp.com/

This API is used for a trail finder app. Images are integrated with AWS S3 to allow users to upload their own hiking images. This API will respond to calls from the My Trails app frontend but will not allow requests from other sources.

The API is currently hosted at: https://my-trails-backend.herokuapp.com

![](https://media.giphy.com/media/l0G17xIGgcy5Kdwha/giphy.gif)

## Example Routes

There are still several routes which will return data, the trails, locations, and avatars routes will all return data.

  * Trails
    - Location Search
      - Example Route: https://my-trails-backend.herokuapp.com/api/v1/trails-by-location?lat=40.0274&lon=-105.2519
      - This route will return trail data based on latitude and longitudinal coordinates
    - Ids Search
      - Example Route: https://my-trails-backend.herokuapp.com/api/v1/trails-by-ids?ids=7015435,7011234,7011187
      - This route will return trail data based on their ids in the [Hiking Project API](https://www.hikingproject.com/data)
  * Locations
    - Example Route: https://my-trails-backend.herokuapp.com/api/v1/locations
    - This route will return location data, a location name, the coordinates, the state, and the city name.
  * Avatars
    - Example Route: https://my-trails-backend.herokuapp.com/api/v1/avatars
    - This route will return avatar data, an image url, and a shorthand name for the avatar image.
    
## Technology Used

* Ruby on Rails
* JWT user authentication
* AWS S3 image hosting
* Hiking Project API

## Setting up the server

![](https://media.giphy.com/media/l4FGmsWSQiwJe0NFe/giphy.gif)

As this is a rails app, you will need to run bundle install after you clone the repo. There are also several different .env variables that you will need to define. I have created a .env.sample file to give you placeholders for what keys you will need to use the full functionality of this application.

You will need a [Hiking Project API Key](https://www.hikingproject.com/data), an AWS account, and a JWT secret. For the API Key, you will need to request that from the hiking project. You will need to sign up for an [AWS account](https://portal.aws.amazon.com/billing/signup#/) if you want to use AWS S3 hosting for images. You will need your AWS access key, AW secret access key, AWS region, and the name of your S3 bucket to use this application in it's current state.

As the frontend for this app is located in a different repo, you can always navigate to the direct localhost routes. You can also use an application like Postman to make requests and test your server or simply clone the frontend app if you want to see the data that is returned.

## Thank You!

![](https://media.giphy.com/media/xULW8v7LtZrgcaGvC0/giphy.gif)

 * [REI's Hiking Project](https://www.hikingproject.com)
   - Their [API](https://www.hikingproject.com/data) has been an absoloute pleasure to work with and I am so glad that I was able to integrate it into this application.
