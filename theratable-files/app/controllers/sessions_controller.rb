class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show update destroy ]

  # GET /sessions
  def index
    @sessions = Session.all

    render json: @sessions
  end

  # GET /sessions/1
  def show
    render json: @session
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.require(:session).permit(:title, :description, :duration, :credits_worth, :single, :bundle, :cost, :image)
    end
end
