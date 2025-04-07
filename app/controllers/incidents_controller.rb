# This is an Incident class which describe about the incidents model and controller
class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :destroy]

  def index
    incidents = Incident.all
    render json: incidents, status: :ok
  end

  def create
    incident = Incident.new(incident_params)
    if incident.save
      render json: incident, status: :created
    else
      render json: { errors: incident.errors.full_messages }, status: :bad_request
    end
  end

  def show
    render json: @incident, status: :ok
  end

  def destroy
    @incident.destroy
    render json: { message: "Incident deleted successfully" }, status: :ok
  end

  private

  def set_incident
    @incident = Incident.find_by(id: params[:id])
    return if @incident

    render json: { error: "Incident not found" }, status: :not_found
  end

  def incident_params
    params.require(:incident).permit(:title, :description, :severity)
  end
end
