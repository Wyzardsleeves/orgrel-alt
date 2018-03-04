rails new appName --api         #creates new rails app for an api
rails g model modelNameHere     #creates a model ex) rails g model Post title:string body:text

#in user model
validates :modelNameParamHere, presence: true  #checks to make sure modelNameParamExist

#database
rake db:migrate       #migrates data to database
rake db:reset         #resets database with new data
rake db:seed          #adds new data to database
rake db:schema:load   #reset database (when sqlite3 won't run db:reset)

#api directory setup
mkdir controllers/api           #create api folder in controllers
mkdir ../api/v1                 #create first version folder
touch ..v1/users_controller.rb  #creates user controller

#create API controller
module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.order('created_at DESC')
        render json: {status: 'Success', message: 'Loaded Users', data:users},status: :ok
      end
    end
  end
end

#add routes
namespace 'api' do
  namespace 'v1' do
    resources :users
  end
end

#individual render
def show
  user = User.find(params[:id])
  render json: {status: 'Success', message: 'Loaded user', data:user},status: :ok
end
