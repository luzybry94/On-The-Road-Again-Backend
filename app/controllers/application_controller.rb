class ApplicationController < ActionController::API
    # WHY?: Will call the authorized method before anything else happens in our app. This will effectively lock down the entire application.
  before_action :authorized

  

  # STEP 1: Encode/Decode Tokens
  # WHY?: `JWT.encode` takes up to three arguments: a payload to encode, an application secret of the developer's choice, and an optional third that can be used to specify the hashing algorithm used. Typically, we don't need to show the third. This method returns a JWT as a string.
  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'my_s3cr3t')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # STEP 2: Authentication helper methods
  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  # STEP 3: Authorization helper methods
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end
