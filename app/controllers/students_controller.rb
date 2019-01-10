class StudentsController < ApplicationController
    def show
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(user_params)
        if @student.save
         flash[:success] = "Account has been created"
         redirect_to student_path(@student)
        else
         render 'new'
        end

    end



    def user_params
        params.require(:student).permit(:first_name, :last_name, :phone, :birthday, :cohort_id)
    end
    
end
