class ActorsController < ApplicationController
  before_action :authenticate_user!
  #http_basic_authenticate_with name: "abc", password: "1234"

  def index
    @actors = Actor.all
    render json: @actors, status: 200
  end

  def show
   @actor = Actor.find(params[:id])
   render json: @actor, status: 200
  end

  def earnings
    actor = Actor.find(params[:id])
    amount = actor.remuneration_histories
    render json: amount, status: 200
  end

  def create
   @actor = Actor.new(actor_params)
   if @actor.save
    render json: @actor, status: 200
   else
    render json: { error: @actor.errors.full_messages }, status: :unprocessable_entity
   end
  end


  def new
    #actor = Actor.find(params[:id])
    new_amount = RemunerationHistory.new(amount: remuneration_params[:amount])
    if new_amount.save
      render json: new_amount, status: 200
    else
     render json: {message: "Cannot be created"}
    end
  end

  def modify
    actor = Actor.find(params[:id])
    amount = actor.remuneration_histories.update(remuneration_params)
    render json: amount
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

    def remuneration_params
      params.require(:actor).permit(:amount, :actor_id)
    end

end
