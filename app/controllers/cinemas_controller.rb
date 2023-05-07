class CinemasController < ApplicationController
  before_action :authenticate_user!

  def index
    @cinemas = Cinema.all
     render json: @cinemas, status: 200
  end

  def show
    @cinema = Cinema.find(params[:id])
    render json: @cinema, status: 200
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      render json: @cinema, status: 200
    else
      render json: { error: @cinema.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @cinema = Cinema.find(params[:id])
    if @cinema.update(cinema_params)
      render json: @cinema, status: 200
    else
      render json: { message: "Update Failed!" }, status: :unprocessable_entity
    end
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy
    render json: { message: "Record Deleted!"}
  end

  private
   def cinema_params
    params.require(:cinema).permit(:name,:language)
   end
end
