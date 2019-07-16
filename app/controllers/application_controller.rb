class ApplicationController < Sinatra::Base
    configure do
        set :views, 'app/views'
        set :method_override, true
      end
    
      # get '/puppies' do
      #   # binding.pry
      #   @puppys = Puppy.all
      #   erb :welcome
      # end

      # get '/puppies/new' do
      #   erb :new
      # end

      # post '/puppies' do
      #   Puppy.create(params)
      #   redirect '/puppies'
      # end

      # get '/puppies/:id' do
      #   @puppy = Puppy.find(params[:id])
      #   erb :show
      # end

      # get '/puppies/:id/edit' do
      #   @puppy = Puppy.find(params[:id])
      #   erb :edit
      # end

      # patch '/puppies/:id' do
      #   # binding.pry
      #   puppy = Puppy.find(params[:id])
      #   puppy.update(name: params[:name], breed: params[:breed])
      #   redirect "/puppies/#{puppy.id}"
        
      # end

      # delete '/puppies/:id' do
      #   # binding.pry
      #   puppy = Puppy.find(params[:id])
      #   puppy.destroy 
      #   redirect '/puppies'
      # end
      

   
end
