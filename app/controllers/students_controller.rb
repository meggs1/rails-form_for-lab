class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :lastname))
        redirect_to student_path(@student) 
    end

    def show
        @student = Student.find_by(params[:id])
    end

    def edit
        @student = Student.find_by(params[:id])
    end

    def update
        @student = Student.update(params.require(:student).permit(:first_name, :lastname))
        redirect_to student_path(@student) 
    end
    
end
