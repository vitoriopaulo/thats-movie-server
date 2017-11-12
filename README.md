**Introduction:**
This is the full-stack Capstone (front-end and back-end) project developed in
the scope of the program of the WDI (Web Development Immersive) 020 Fall
class Boston.

**Technologies:**
The back-end of the web-application was designed as a custom built API.
Technologies used to build the server-side engine of the web application:
Ruby, Rails, PostgreSql, Sql, GIT, GITHUB, HEROKU, BASH.

**Concept:**
The API, as part of a full-stack web application, was inspired in
the universe of the cinema. In it's first release, the server-side engine was
thought to allow registered users to build and manipulate their own list of
movies (data) by interaction with a SQL database through CRUD (create, read,
update, and delete) actions.

Simple in essence, the API is thought on top of a relationship of One to Many:
A (registered) user has many movies; a movie belongs to an (registered) user.
In this context, ownership of the element movie is established by the user when
creating his (her) own movies: the API engine only allows an (registered) user
to execute CRUD actions to his(her) own list of songs.

**Problem solving approach and development process:** 
The web application as awhole was thought to be designed as an integrated product. 
In this way ofthinking, both importance was given to the front-end and back-end of 
theweb application: they were conceptualized, developed, tested, debugged and
released togheter, as an integrated product.

**API end-points:**

| Verb | URI Pattern | Controller#Action |
| ---- | ----------- | ----------------- |
| POST   | `/sign-up`  | `users#signup` |
| POST   | `/sign-in`  | `users#signin` |
| DELETE | `/sign-out/:id` | `users#signout`  |
| PATCH   | `/change-password/:id`  | `users#changepw` |
| GET   | `/movies`  | `movies#index` |
| POST   | `/movies`  | `movies#create`  |
| PATCH   | `/movies/:id`  | `movies#update` |
| DELETE   | `/movies/:id`  | `movies#destroy` |

***Note:*** *all data returned is in JSON.*

**ERD:**
The following image displays the skecthed wireframe of the ERD of the custom built
API of the web application:
![ERD](https://78.media.tumblr.com/8705bde8be267488811b7a6a34a624f3/tumblr_oz0886uGuN1wvd0d5o1_1280.jpg)

**Client-side Github Repository:**
The client-side of the web application is also hosted in Github:
https://github.com/vitoriopaulo/thats-movie-client

**Deployed urls of the web app:**
Bellow follows the deployed urls of both front-end and back-end of the
full-stack web application:
https://vitoriopaulo.github.io/thats-movie-client/
https://thats-movie.herokuapp.com/

By: Vitorio Paulo :: Made with much love for General Assembly.
Boston, MA. USA. WDI 020 Fall Class 2017.
