[![Build Status](https://travis-ci.com/lornatumuhairwe/membershipPlatform.svg?branch=master)](https://travis-ci.com/lornatumuhairwe/membershipPlatform)
[![Coverage Status](https://coveralls.io/repos/github/lornatumuhairwe/membershipPlatform/badge.svg?branch=master)](https://coveralls.io/github/lornatumuhairwe/membershipPlatform?branch=master)

# Membership Platform

#### Prerequisites

- Ruby 2.5.5
- Rails 5.2.3
- Postgresql

This is a very minified membership platform.
In this platform. Members belong to different Plans. 
Plans can of type `recurring` or `time_limited`. 


It has only one endpoint that is used to fetch the users associated with a plan.
This is found at `/plan/:id/members`.


#### Usage
The API is authenticated using an api key. To get an api key, 
send a POST request to the endpoint `/get_api_key` with an email parameter.

Here is an example request using [HTTPie](https://httpie.org/doc)

    http POST :3000/get_api_key email=lorna@test.com
    
With the api key received, use it to make subsquents request to fetch users by membership plan. 

    http :3000/plan/2/members 'Authorization:Token token=<API key>'
    


#### Setup

- Clone project from Github.
- On your local machine `cd` into the project directory and run `bundle`.
- Run the server with `rails s`


#### Tests

In the project directory, run `rspec` 
