class CountryTeachersController < TeachersController
    def index
        @teachers = AppCountry.find(params[:app_country_id]).teachers
        super
    end
end