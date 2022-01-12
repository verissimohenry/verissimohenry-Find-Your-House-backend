class Api::V1::HousesController < ApplicationController
  skip_before_action :authorize_request
  def index
    @houses = House.all
    render json: @houses
  end

  def create
    @house = House.create!(house_params)
    render json(@house, :created)
  end

  private

  def house_params
    params.require(:house).permit(:name, :category, :description, :photo_url)
  end
end
