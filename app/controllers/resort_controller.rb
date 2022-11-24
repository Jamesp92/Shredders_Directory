class ResortController < ApplicationController

  def index
    @resort = Resort.all
    json_response(@resort)
  end

  def show
    state = State.find(params[:state_id])
    @resort = Resort.find(params[:id])
    if @resort.state_id = state.id
      json_response(@resort)
    else
      # flash error or whatever
    end
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

# t.string "resort_name"
# t.integer "number_of_lifts"
# t.integer "ticket_cost"
# t.integer "state_id"