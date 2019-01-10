class CoursesController < ApplicationController
    def index

    end

    def show
        @courses = Course.all
    end
    
    def new 
        @course = Course.new
    end

    def create
        @course = Course.new(user_params)
        if @course.save
         flash[:success] = "Account has been created"
         redirect_to course_path(@course)
        else
         render 'new'
        end
    end


    def user_params
        params.require(:course).permit(:title, :hours, :description)
    end

end
