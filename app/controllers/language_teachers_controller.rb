class LanguageTeachersController < TeachersController
    def index
        @teachers = Language.find(params[:language_id]).teachers
        super
    end
end