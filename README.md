# Bun Times
## A new way to fix your craving
Sometimes a craving hits you, a craving for a burger. You may have your favourite burger joint, but what if it's on the otherside of town? Welcome to 'Bun Times' the burger locator. Sign up for a free account and then when that craving hits you'll be able to find a burger and fast. As an added feature, you can answer some quick questions and the app will suggest burgers that fit your needs. Once the app has found you a burger, it displays the where the burger can be found with a map and a link to the store's website.
[Bun Times](https://buntimes.herokuapp.com/)

### Technologies Used
* Postgres
This implementation of SQL was used to manage the app's database. It's relational structure easily allows tables to be connected for complex query requests.

* ActiveRecord
This Ruby gem provides ORM (Object-Relational Mapping) functionality to the Postgres Database. It allows the access of tables in the database as if they were Ruby objects. By following convention over configuration, complex database queries become relatively straight forward.

* [Ruby Geocoder](https://github.com/alexreisner/geocoder)
This Ruby gem was used to find the distance between the user and the burger shops based on thier co-ordinates. These valuesc are then sorted to find the closest burger to the user. Later in development, this gem will be used to convert the user's IP address into co-ordinates as a backup to browser geolocation no being accessable.

* [Google Maps API](https://developers.google.com/maps/)
Using Google's API allowed for maps to be displayed on the page for each burger. This shows the user the location of the shop where the burger can be purchased.


### Challenges
* The largest difficulty in this pproject was determining a good way to find the distance between the user and the stores. Originally it seemed that Geocoder would allow the the comparison through a built-in method, `distance_to`. But I had trouble working out how to call this method with the current user object as an argument. Instead, I choose to store the user's co-ordinates co-ordinates in the session and pass them to the method directly , `shop.distance_to([session[:latitude], session[:longitude]])`.
* Collecting the user's co-ordinates also posed an issue. While a JS script could be used to access the browser's navigator object to find the co-ordinates, it often took upwards of 30 seconds on a page that the user would look at for less than five. Finding a way of accessing the user's IP as an alternative to co-ordinates without the use JQuery was difficult to implement in the time frame.


### Future Improvements
 * Add a favourites feature so users can save their favourite burgers or track which ones they have tried before.
 * Use the actual geolocation of the user to locate thier postion instead of using hard coded coordinates. 
 * User settings to update thier information and easily view thier favourite burgers.
 * Vegan, Vegetarain, Carnivore settings to cater more accurately to user's preferences.

