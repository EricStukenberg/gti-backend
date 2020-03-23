class AuthController < ApplicationController
  # Login
  def create

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # issue that user a token\
      token = issue_token(user)
      render json: {id: user.id, username: user.username, email: user.email, jwt: token}
    else
      render json: {error: 'That user could not be found'}, status: 401
    end
  end

  def show
    user = User.find_by(id: user_id)
    if logged_in?
      render json: { id: user.id, username: user.username, email: user.email }
    else
      render json: {error: 'No user could be found'}, status: 401
    end
  end
end
