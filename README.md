# The Shredders Directory !
Epicodus solo project that demonstrates use of ruby on rails /  this a a API that allows people to look up / Add and Delete ski resorts in different countries and states /

## Technologies Used
* Rails
* Ruby
* Test-Driven Development
* Postgress
* SQL
* Rspec
* Rake
* Html
* Capybara
* Faker
* shoulda-matchers
* Embedded Ruby 



## Install

### Clone the repository

```shell
git clone https://github.com/Jamesp92/Shredders_Directory
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install ruby 3.1.2
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) 

```shell
bundle 
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```


## Known Bugs
 none.... yet

## License
MIT License

Copyright (c) 2022  pj perry

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE


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
|POST|`http://localhost:3000/country/:id/state`|`http://localhost:3000/country/285/state?state_name=PeejBerg&country_id=265`|Adds state named PeejBerg. If POST is succesfull, returns database object for newly created state| :country_name - The countries name. :state_name - name of state - :country_id id of country you are adding state to |
|POST|`http://localhost:3000/country/:id/state/:id/resort`|`http://localhost:3000/country/285/state/1541/resort?resort_name=Peej MT.&number_of_lifts `|Adds resort named Peej MT. . If POST is succesfull, returns database object for newly created resort| :country_name - The countries name. :state_name - name of state - :country_id id of a country - :id of a state |
|PUT/PATCH|`http://localhost:3000/country/:id`|`http://localhost:3000/country/285?country_name=PeejVille`|Updates the name of a country with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated country.| :id - id of the country to update (required), :country_name - The countries name|
|PUT/PATCH|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541?state_name=State Of Peej&country_id=285`|Updates the name of a state with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated state.| :id - id of the country to update (required), :country_name - The countries name - :state_name (required) :country_id (required)|
|PUT/PATCH|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541?state_name=State Of Peej&country_id=285`|Updates the name of a state with ID=285. If PUT/PATCH is succesfull, returns database object for newly updated state.| :id - id of the country to update (required), :country_name - The countries name - :state_name (required) :state_id - id of state (required) :country_id (required) - :id resort id (required) :resort_name name of resort you are updating to (required)  |
|DELETE|`http://localhost:3000/country/:id`|`http://localhost:3000/country/38`|Deletes the country with ID=38 from database| :id - id of the country to delete |
|DELETE|`http://localhost:3000/country/:id/state/:id`|`http://localhost:3000/country/285/state/1541`|Deletes the state with ID=285 from database| :id - id of a country / :id = id of the state to delete |
|DELETE|`http://localhost:3000/country/:id/state/:id/resort/:id`|`http://localhost:3000/country/285/state/1541/resort/11003`|Deletes the resort with ID=11003 from database| :id - id of a country / :id = id of a state / :id - id of the resort to delete |

