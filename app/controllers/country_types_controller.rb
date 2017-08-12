class CountryTypesController < ApplicationController
  before_action :set_country_type, only: [:show, :update, :destroy]

  # GET /country_types
  def index
    @country_types = CountryType.all

    render json: @country_types
  end

  # GET /country_types/1
  def show
    render json: @country_type
  end

  # POST /country_types
  def create
    @country_type = CountryType.new(country_type_params)

    if @country_type.save
      render json: @country_type, status: :created, location: @country_type
    else
      render json: @country_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /country_types/1
  def update
    if @country_type.update(country_type_params)
      render json: @country_type
    else
      render json: @country_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /country_types/1
  def destroy
    @country_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_type
      @country_type = CountryType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def country_type_params
      params.require(:country_type).permit(:teacher_id, :student_id, :country_id, :type)
    end
end
