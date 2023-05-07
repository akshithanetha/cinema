class ActorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @actors = Actor.all
    render json: @actors, status: 200
  end

  def show
   @actor = Actor.find(params[:id])
   render json: @actor, status: 200
  end

  def create
   @actor = Actor.new(actor_params)
   if @actor.save
    render json: @actor, status: 200
   else
    render json: { error: @actor.errors.full_messages }, status: :unprocessable_entity
   end
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      render json: @actor, status: 200
    else
      render json: { error: "Update Failed!" }, status: :unprocessable_entity
    end
  end

  def destroy
   @actor = Actor.find(params[:id])
   @actor.destroy
  render json: { message: "Record Deleted!" }, status: 200
  end

  private
    def actor_params
      params.require(:actor).permit(:name)
    end



end
