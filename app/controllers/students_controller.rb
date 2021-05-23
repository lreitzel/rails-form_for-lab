class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        student
    end

    def edit
        student
    end
    
    def update
        student
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student 
        @student = Student.find_by(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end