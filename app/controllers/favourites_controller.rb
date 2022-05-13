class FavouritesController < ApplicationController
  before_action :current_user
  def index
    render json: current_user.homes, status: :ok
  end

  def create
    favourite = Favourite.new(favourite_params)

    if favourite.save
      render json: { favourite: 'we added to your favourites' }, status: 201
    else
      render json: { error: favourite.errors.full_messages }, status: 401
    end
  end

  def destroy
    favourite = Favourite.find(params[:id])

    if favourite.destroy
      head :no_content
    else
      render json: { error: favourite.errors.messages }, status: 422
    end
   end

  private

  def favourite_params
    params.require(:favourite).permit(:title, :description, :score, :house_id)
  end
end
