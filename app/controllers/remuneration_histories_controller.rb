class RemunerationHistoriesController < ApplicationController

  def index
    remunerations = RemunerationHistory.all
    render json: remunerations, status: 200
  end
end
