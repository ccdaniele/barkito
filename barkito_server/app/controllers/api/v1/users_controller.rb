class Api::V1::UsersController < ApplicationController
<<<<<<< HEAD
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all

    render json: @users
=======
skip_before_action :authorized, only: [:create, :show]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
>>>>>>> 6d013a78 (next.js migration)
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
<<<<<<< HEAD
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
      # byebug 
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

=======
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

    # GET /users
    def index
      @users = User.all
      render json: @users
    end

>>>>>>> 6d013a78 (next.js migration)
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
<<<<<<< HEAD
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:user_name, :user_borough, :user_neighborhood, :user_street, :user_city, :user_zip_code, :gender, :user_description, :user_birth, :user_email, :password_digest, :vendor_admin, :performer_admin, :crew_member)
=======

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :username, :borough, :neighborhood, :street, :city, :zip_code, :gender, :description, :birth, :email, :password, :vendor_admin, :performer_admin, :crew_member)
>>>>>>> 6d013a78 (next.js migration)
    end
end
