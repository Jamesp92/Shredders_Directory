class ResortController < ApplicationController

  def index
    @resort = Resort.all
    json_response(@resort)
  end

  def show
    @resort = Resort.find(params[:id])
    json_response(@resort)
    
    end
  

  def create
    @resort = Resort.create(resort_params)
    json_response(@resort)
  end

  def update
    @resort = Resort.find(params[:id])
    @resort.update(resort_params)
  end

  def destroy
    @resort = Resort.find(params[:id])
    @resort.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def resort_params
    params.permit(:state_id , :ticket_cost , :number_of_lifts , :resort_name)
  end
end

