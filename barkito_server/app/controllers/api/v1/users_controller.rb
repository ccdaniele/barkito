class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]
  

  # GET /users
  def index
    users = User.all
  
    render json: users
  end

  # GET /users/1
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nick_name, :user_name, :user_borough, :user_neighborhood, :user_street, :user_city, :user_zip_code, :gender, :user_description, :user_birth, :user_email, :password, :vendor_admin, :performer_admin, :crew_member)
    end
end
