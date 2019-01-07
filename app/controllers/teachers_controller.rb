class TeachersController < ApplicationController
    def index
        @teacher = Teacher.new
        
    end

    def new
        @teacher = Teacher.new
    end
end
