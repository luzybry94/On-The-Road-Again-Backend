class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def autologin
    if logged_in?
        render json: {status: 201, user: UserSerializer.new(logged_in_user), logged_in: true}
    else
        render json: { status: 400, user: {}, logged_in: false}
    end
  end

  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: {status: 201, user: UserSerializer.new(@user), jwt: token, logged_in: true}, status: :accepted
    else
      render json: { message: 'Invalid Credentials' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.permit(:username, :password)
  end
end
