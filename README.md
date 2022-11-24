# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# API_documentation_example
This is an example of a table used to document endpoints in an API project

## API Endpoints

| Method  | URL | Example | Result | Params |
| :--- |:---| :---| :---| :---|
|GET| `localhost:3000/country` |`localhost:3000/country`| Returns a list of all countries in the database | None required |
|GET|`localhost:3000/quotes/:id`| `localhost:3000/country/38`| Returns all information related to countries with ID=38| :id - The id of a particular country (required) |
|GET|`http://localhost:3000/country/:id/state`| `http://localhost:3000/country/:id/state`| Returns all states in database where :country_id relates to state| :country_id - :id of country |
|GET |`http://localhost:3000/quotes/search/:content`| `http://localhost:3000/quotes/search/?content=Four score...` | Returns quote with content "Four score..."| :content - The content of a quote | 
|GET|`http://localhost:3000/quotes/random`|`http://localhost:3000/quotes/random`|Returns a random quote from the database| None required |
|POST|`http://localhost:3000/quotes/`|`http://localhost:3000/quotes/?author=Abraham Lincoln&content=Four score...`|Adds quote to database. Author:Abraham Lincoln, Content: "Four score...". If POST is succesfull, returns database object for newly created quote.| :author - The author's name (required), :content - The content of a quote (required)|
|PUT/PATCH|`http://localhost:3000/quotes/:id`|`http://localhost:3000/quotes/38?author=Joe Biden`|Updates the author for a quote with ID=38. If PUT/PATCH is succesfull, returns database object for newly updated quote.| :id - id of the quote to update (required), :author - The author's name And/or :content - The content of a quote |
|DELETE|`http://localhost:3000/quotes/:id`|`http://localhost:3000/quotes/38`|Deletes the quote with ID=38 from database| :id - id of the quote to delete |
