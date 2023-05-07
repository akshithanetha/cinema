class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    authorize @users
    render json: @users, status: :ok
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: {message: "User could not be updated"}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:role)
  end
end
