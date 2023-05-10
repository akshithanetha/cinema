class Admin::CinemasController < ApplicationController
  def index
    cinemas = Cinema.where(language: "Telugu")
    render json: cinemas, status: 200
  end
end
