class UsersController < ApplicationController
    def new
        @user = User.new 
        render :new
    end

    def create 
        @user = User.new(valid_params)
        if @user.save
            login!(@user)
            redirect_to users_url(params[:id])
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def show
        @user = User.find_by(id:params[:id])
        render :show
    end

    def index
        @users = User.all 
        render :index
    end

    def valid_params
        params.require(:user).permit(:username, :password)
    end
end
