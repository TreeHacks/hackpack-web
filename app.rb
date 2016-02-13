require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'treeyak.sqlite3' }

class Yak < ActiveRecord::Base
end

get '/' do
  # BEGIN YOUR CODE HERE

  # Here, you should store all the Yak's in the database in a variable called yaks.

  # END YOUR CODE HERE

  erb :index, locals: { yaks: yaks }
end

get '/new_yak' do
  erb :new_yak
end

post '/new_yak' do
  contents = params['contents']

  # BEGIN YOUR CODE HERE

  # In this section, you should create a new yak, initialize it with the data from the form, and then save it to the database.

  # END YOUR CODE HERE

  redirect to('/')
end

post '/upvote' do
  yak_id = params['yak_id']

  # BEGIN YOUR CODE HERE

  # In this section, you should increment the yak's upvotes by 1 and return the new number of upvotes in json.
  # (Note: This will be called via AJAX, so you don't need to render any html or redirect to any other page.)

  # END YOUR CODE HERE
end

post '/downvote' do
  yak_id = params['yak_id']

  # BEGIN YOUR CODE HERE

  # In this section, you should decrement the yak's upvotes by 1 and return the new number of upvotes in json.
  # (Note: This will be called via AJAX, so you don't need to render any html or redirect to any other page.)

  # END YOUR CODE HERE
end

get '/hot' do
  # BEGIN YOUR CODE HERE

  # Here, you should use the order method on the Yak class to get all the Yaks ordered by upvotes.
  # The order method takes one parameter, which is the field you want to order by.

  # END YOUR CODE HERE

  erb :index, locals: { yaks: yaks }
end

get '/new' do
  # BEGIN YOUR CODE HERE

  # Here, you should use the order method on the Yak class to get all the Yaks ordered by it's created_at field.
  # The order method takes one parameter, which is the field you want to order by.

  # END YOUR CODE HERE

  erb :index, locals: { yaks: yaks }
end
