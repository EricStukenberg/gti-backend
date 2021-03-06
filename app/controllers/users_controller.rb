class UsersController < ApplicationController
  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
end
def show
    @user = User.find(params[:id])
   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      token = issue_token(@user)
      render json: {id: @user.id, username: @user.username, jwt: token}
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end
  def edit
    user = User.find(params[:id])
end

def update
    user = User.find(params[:id])
    user.update(score: params["score"], winPer: params["winPer"])
    render json: user
end

def destroy
  @user = User.find(params[:id])
  @user.destroy

end



private
  
  def user_params
    params.require(:user).permit(:username, :email, :winPer, :password, :password_confirmation, :score)
  end
end
