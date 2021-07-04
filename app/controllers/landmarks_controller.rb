class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    @landmarks = Landmark.all 
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new' 
  end

  post '/landmarks' do 
    Landmark.create(params[:landmark])
  end

  get '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do 
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  patch '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark]) 
    erb :'/landmarks/#{@landmark.id}'
  end

end
