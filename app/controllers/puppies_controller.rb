class PuppiesController < ApplicationController


    get '/puppies' do
        # binding.pry
        @puppys = Puppy.all
        erb :'puppies/welcome'
      end

      get '/puppies/new' do
        erb :'puppies/new'
      end

      post '/puppies' do
        Puppy.create(params)
        redirect '/puppies'
      end

      get '/puppies/:id' do
        @puppy = Puppy.find(params[:id])
        erb :'puppies/show'
      end

      get '/puppies/:id/edit' do
        @puppy = Puppy.find(params[:id])
        erb :'puppies/edit'
      end

      patch '/puppies/:id' do
        # binding.pry
        puppy = Puppy.find(params[:id])
        puppy.update(name: params[:name], breed: params[:breed])
        redirect "/puppies/#{puppy.id}"
        
      end

      delete '/puppies/:id' do
        # binding.pry
        puppy = Puppy.find(params[:id])
        puppy.destroy 
        redirect '/puppies'
      end
      


end