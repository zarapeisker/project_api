class SubjectTeachersController < TeachersController
    def index
        @teachers = Subject.find(params[:subject_id]).teachers
        super
    end
end