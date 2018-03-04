module Api
  module V1
    class UsersController < ApplicationController
      
      def index
        users = User.order('created_at DESC')
        render json: {status: 'Success', message: 'Loaded users', data:users},status: :ok
      end

      def show
        user = User.find(params[:id])
        render json: {status: 'Success', message: 'Loaded user', data:user},status: :ok
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: {status: 'Success', message: 'Created user', data:user},status: :ok
        else
          render json: {status: 'Failed', message: 'User creation unsuccessful', data:user.errors},status: :unprocessable_entity
        end
      end

      def update
        user = User.find(params[:id])

        if user.update_attributes(user_params)
          render json: {status: 'Success', message: 'User updated!', data:user},status: :ok
        else
          render json: {status: 'Failed', message: 'User update unsuccessful', data:user.errors},status: :unprocessable_entity
        end
      end

      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {status: 'Success', message: 'Deleted user!', data:user},status: :ok
      end

      private
      def user_params
        params.permit(:first_name, :last_name, :description, :title)
      end

      #Exports json
      def export_json
        data = User.all.to_json #may not need this
        send_data data, :type => 'application/json; header=present', :disposition => "attachment; filename=users.json"
      end
    end
  end
end
