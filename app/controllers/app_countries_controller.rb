class AppCountriesController < ApplicationController
  before_action :set_app_country, only: [:show, :update, :destroy]

  # GET /app_countries
  def index
    @app_countries = AppCountry.all

    render json: @app_countries
  end

  # GET /app_countries/1
  def show
    render json: @app_country
  end

  # POST /app_countries
  def create
    @app_country = AppCountry.new(app_country_params)

    if @app_country.save
      render json: @app_country, status: :created, location: @app_country
    else
      render json: @app_country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_countries/1
  def update
    if @app_country.update(app_country_params)
      render json: @app_country
    else
      render json: @app_country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_countries/1
  def destroy
    @app_country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_country
      @app_country = AppCountry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def app_country_params
      params.require(:app_country).permit(:name)
    end
end
