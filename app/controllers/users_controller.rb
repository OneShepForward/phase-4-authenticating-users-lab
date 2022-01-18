class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def show
    user = User.find(session[:user_id])
    render json: user
  end


end
