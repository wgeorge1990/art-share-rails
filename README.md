# README

# Artshare (Backend) v1.0
    
## Motivation
    Art share is a signle page web application build with a rails API as a backend and a React project as the front end. The purpose of this application is 
    to assist artists in sharing art, viewing art, exchanging advice and opinions about works of art, networking with artists in your area. Version 1.0 is simply an MVP
    was created as a project for Flatiron. My plan is to continue to add features like: Marketplace, direct messages, a detail view with a focus feature. ect.
## features
    -JWT Auth
    -Image Upload
    -Create Account
    -Pin Art
    -Like Art
    -Save Others Art as Favorites
    -Upload Profile Avatar
    -Email other artists
## Ruby version
    -ruby 2.5.1p57 
    -bundled with  1.17.1
## Platforms
  -ruby
## dependencies
  -bcrypt (~> 3.1.7)
  -bootsnap (>= 1.1.0)
  -byebug
  -dotenv-rails
  -jwt (~> 2.1)
  -listen (>= 3.0.5, < 3.2)
  -pg (>= 0.18, < 2.0)
  -puma (~> 3.11)
  -rack-cors
  -rails (~> 5.2.2)
  -spring
  -spring-watcher-listen (~> 2.0.0)
  -tzinfo-data
## RUBY VERSION
   -ruby 2.5.1p57
## BUNDLED WITH
   -1.17.1
## Installation
    1) Clone or fork repository from github.
    2) Open directory in terminal.
    3) Make sure Postgres is running on your local device so that database can be created.
    4) run rails db:create && rails db:migrate (There is no seed file and I recomend creating an account and adding data yourself post setup)
    5) run bundle 
    6) run rails s
    
    -At this point your rails server should be running on http://localhost:3000 unless specified diferently. Cors accepts all sources at the moment in order to allow 
    the user to an port of their choosing. I recomend confirming successfull setup of backend by lauching the server url in a chrome browser.

## Contribution
    -I always learning and working on imporving as a software engineer. I you like this project and want to contribute or have advice or contructive criticism I would love for you to share.

