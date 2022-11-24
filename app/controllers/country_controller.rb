class CountrysController < ApplicationController

  def index
    @country = Country.all
    json_response(@country)
  end

  def show
    @country = Country.find(params[:id])
    json_response(@country)
  end

  def create
    @country = Country.create(country_params)
    json_response(@country)
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def country_params
    params.permit(:country_name)
  end
end