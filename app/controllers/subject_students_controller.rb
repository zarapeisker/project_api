class SubjectStudentsController < StudentsController
    def index
        @students = Subject.find(params[:subject_id]).students
        super
    end
end