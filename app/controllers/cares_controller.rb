class CaresController < ApplicationController
  before_action :care, only: [:show, :edit, :update, :destroy]
  
  def index
    @cares = Care.all
  end

  def show
    @care = Care.find(params[:id])
  end

  def new
    @care = Care.new
  end

  def create
    Care.create(params)
  end

  def edit
    @care = Care.find(params[:id])
  end

  def update
    care.update(params)
  end

  def destroy
    care.destroy
  end

  private

  def care
    @care ||= Care.find(params[:id])
  end

  def care_params
    params.require(:care).permit(:name, :description)
  end
end
