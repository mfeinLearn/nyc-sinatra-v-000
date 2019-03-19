class FiguresController < ApplicationController

  # NEW ROUTE - RENDER THE FORM // create action
  get '/figures/new' do
    # what happens?
    # (nothing needs to happen)
    # erb/redirect?
    # where do we go?
    erb :'/figures/new'
  end

  #CREATE ACTION // create action - this is the action that recieves the form
  post '/figures' do # job of this is to take information and create a
                    # new resource
    # what happens?
    # we need to use the incoming form info to
    # create a new figure!
    @figure = Figure.create(params)
    #binding.pry
    # erb/redirect?
    # where do we go?
    redirect "/figures/#{@figure.id}"
    # we should send a new http request and send it to the action whos job is to
    # show this thing
  end

  # SHOW ROUTE - SHOW ONE THING // read action
  # this is a convintion for a show route
  # the id has to be something that is unique to every paticular instance of the model
  # dynamic route - a single part of multiple parts of it that is going to change
  # thus sinantra is going to take the dynamic part of the route and put it as a key in the params
  # hash. The value is the word or what ever that is typed by the user
  get '/figures/:id' do
    #raise params.inspect
    # what happens?
    @figure = Figure.find(params[:id])
    # erb/redirect?
    # where do we go?
    erb :'/figures/show'
  end

end
