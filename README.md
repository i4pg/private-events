# Project: Private Events

## What's this

A project completed as part of [The Odin Ruby on Rails Learning Track](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations) to dive into ActiveRecord’s associations. The project involves building a private website with similar functionality to the well known event organization and management platform [Eventbrite](https://www.eventbrite.com/).

## Live Demo

You can try it out [here](https://pure-peak-66788.herokuapp.com/)  
**HEADS UP**: Heroku server may need up to 30 sec to fire up a dyno. Be patient! :)  

## Functionality

As far as this is a training app with focus on ActiveRecord's associations, anyone is able to sign in/sign up. After the registration/login they're able to create events, invite other users as well as to enroll for events organized by others. Always because it's an exercise, users can create but not enroll for the events with the past dates to practice rails' scopes. the styling was not requested, I built a minimalistic design using `bulma` gem, a CSS framework based on Flexbox.

## Getting started

To get started with the app, make sure you have Rails and Git installed on your machine  

<details>
  <summary>Get instructions</summary>

  Clone the repo to your local machine: 
  ```ruby
  $ git clone https://github.com/xiyini/private-events.git
  ```
  Then, install the needed gems:
  ```ruby
  $ bundle install
  ```
  Next, migrate the database:
  ```ruby
  $ rails db:migrate
  ```
  If you want to load sample users and events, use seeds:
  ```ruby
  $ rails db:seed
  ```
  Finally, on root path run a local server:
  ```ruby
  $ rails server
  ```
  Open browser to view application:
  ```ruby
  localhost:3000
  ```
</details>   

## Reflection

This was an awesome rundown practice and I had a really joyful fun playing with associations, until I bumped into extra credit on allowance to invite other users.
