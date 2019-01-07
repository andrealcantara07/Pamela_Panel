class TeachersController < ApplicationController
    def index
        @teacher = Teacher.new
        
    end
end
