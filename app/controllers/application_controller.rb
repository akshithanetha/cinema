class ApplicationController < ActionController::API
  #before_action :authenticate_user!

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    #flash[:alert] = "You are not authorized to perform this action."
    #redirect_back(fallback_location: root_path)
    render json: "You are not authorized to perform this action"
  end
end
