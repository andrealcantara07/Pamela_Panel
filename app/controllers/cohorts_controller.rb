class CohortsController < ApplicationController
    def index 
       @cohorts = Cohort.new
    end

    def show
        @cohorts = Cohort.all
    end

    def new 
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.new(user_params)
        if @cohort.save
         flash[:success] = "Account has been created"
         redirect_to cohort_path(@cohort)
        else
         render 'new'
        end

    end

    def user_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :teacher, :course)
    end

end
