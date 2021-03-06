class UsersController < ApplicationController
    def index
        @user = User.new
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
       if @user.save
        flash[:success] = "Account has been created"
        redirect_to user_path(@user)
       else
        render 'new'
       end
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
