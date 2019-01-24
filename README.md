# Project 1 - iRateThis

In a nutshell, Instagram with only food pics.

## Things you want to know:

### Ruby version
Ruby 2.5.3
Rails 5.2.2

### Configuration

#### Gems included
- gem 'cloudinary'
- gem 'bootstrap'
- gem 'jquery-rails'
- gem 'rails_12factor', group: :production

- gem 'rails-erd' - Draws a graph of your DB (Include it in development group gems)

I used rails_12factor for deployment on Heroku.
Find more information on rails_12factor on [github](https://github.com/heroku/rails_12factor).

#### Link to the site
The page is hosted on Heroku [here](https://iratethis.herokuapp.com/).

#### Database initialization

- Running `rails db:seed` provides a small number of entries to start you off.

- The Comment model is controlled from the PostsController.

#### Notable points

- All styling is done with Bootstrap.

#### Future plans

- Allow users to input the name and the address of the restaurant/cafe where the food was purchased.

- Integrate Restaurant locations with Google Maps API

- Included "likes" & "followers/friends" functionality.
