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
|GET|`localhost:3000/country/:id`| `localhost:3000/country/38`| Returns all information related to countries with ID=38| :id - The id of a particular country (required) |
|GET|`http://localhost:3000/country/:id/state`| `http://localhost:3000/country/:id/state`| Returns all states in database | :id - the id of a particular country |
|GET |`http://localhost:3000/country/:id/state/:id`| `http://localhost:3000/country/country/38/state/39` | returns all information related to states with ID=39| :id of country - :id of state | 
|GET|`http://localhost:3000/country/:id/state/:id/resort`|`http://localhost:3000/country/:id/state/:id/resort`|Resturns a list of all resorts | :id- of country/ :id of state |
|POST|`http://localhost:3000/country`|`http://localhost:3000/country?country_name=PeejTopia`|Adds country named PeejTopia. If POST is succesfull, returns database object for newly created country| :country_name - The countries name.|
|POST|``http://localhost:3000/country/:id/state`|`http://localhost:3000/country/285/state?state_name=PeejBerg&country_id=265`|Adds state named PeejBerg. If POST is succesfull, returns database object for newly created state| :country_name - The countries name. :state_name - name of state - :country_id id of country you are adding state to |
|POST|`http://localhost:3000/country/:id/state/:id/resort`|`http://localhost:3000/country/285/state/1541/resort?resort_name=Peej MT.&number_of_lifts `|Adds resort named Peej MT. . If POST is succesfull, returns database object for newly created resort| :country_name - The countries name. :state_name - name of state - :country_id id of a country - :id of a state |
|PUT/PATCH|`http://localhost:3000/country/:id`|`http://localhost:3000/country/285?country_name=PeejVille`|Updates the name of a country with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated country.| :id - id of the country to update (required), :country_name - The countries name|
|PUT/PATCH|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541?state_name=State Of Peej&country_id=285`|Updates the name of a state with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated state.| :id - id of the country to update (required), :country_name - The countries name - :state_name (required) :country_id (required)|
|PUT/PATCH|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541?state_name=State Of Peej&country_id=285`|Updates the name of a state with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated state.| :id - id of the country to update (required), :country_name - The countries name - :state_name (required) :state_id - id of state (required) :country_id (required) - :id resort id (required) :resort_name name of resort you are updating to (required)  |
|DELETE|`http://localhost:3000/country/:id`|`http://localhost:3000/country/38`|Deletes the country with ID=38 from database| :id - id of the country to delete |
|DELETE|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541`|Deletes the state with ID=285 from database| :id - id of a country / :id = id of the state to delete |
|DELETE|`http://localhost:3000/country/:id/state/:id/resort/:id`|`http://localhost:3000/country/285/state/1541/resort/11003`|Deletes the resort with ID=11003 from database| :id - id of a country / :id = id of a state / :id - id of the resort to delete |

