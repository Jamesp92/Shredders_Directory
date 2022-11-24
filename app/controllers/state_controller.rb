class StateController < ApplicationController

  def index
    @states = State.all
    json_response(@states)
  end

  def show
    @state = State.find(params[:id])
    json_response(@state)
  end

  def create
    @states = State.create(state_params)
    json_response(@states)
  end

  def update
    @states = State.find(params[:id])
    @states.update(state_params)
  end

  def destroy
    @states = State.find(params[:id])
    @states.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def state_params
    params.permit(:state_name ,:country_id)
  end
end