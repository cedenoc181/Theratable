class FlexologistsController < ApplicationController
  before_action :set_flexologist, only: %i[ show update destroy ]

  # GET /flexologists
  def index
    @flexologists = Flexologist.all

    render json: @flexologists
  end

  # GET /flexologists/1
  def show
    render json: @flexologist
  end

  # POST /flexologists
  def create
    @flexologist = Flexologist.new(flexologist_params)

    if @flexologist.save
      render json: @flexologist, status: :created, location: @flexologist
    else
      render json: @flexologist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flexologists/1
  def update
    if @flexologist.update(flexologist_params)
      render json: @flexologist
    else
      render json: @flexologist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flexologists/1
  def destroy
    @flexologist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flexologist
      @flexologist = Flexologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flexologist_params
      params.require(:flexologist).permit(:first)
    end
end
