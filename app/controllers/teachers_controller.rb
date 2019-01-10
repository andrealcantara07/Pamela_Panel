class TeachersController < ApplicationController
    def index
        @teacher = Teacher.new
        
    end

    def new
        @teacher = Teacher.new
    end

    def show
        @teachers = Teacher.all
    end

    def create
        @teacher = Teacher.new(user_params)
        if @teacher.save
         flash[:success] = "Account has been created"
         redirect_to teacher_path(@teacher)
        else
         render 'new'
        end
    end


    def user_params
        params.require(:teacher).permit(:first_name, :last_name, :email, :phone, :education, :age)
    end

end
