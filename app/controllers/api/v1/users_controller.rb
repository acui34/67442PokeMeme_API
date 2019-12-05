module Api::V1
  class UsersController < ApplicationController
  # Controller Code

  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
   
    if params[:token].present?
      @users = User.by_token(params[:token])
    else
      @users = User.all
    end
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: "completed" #@user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
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

  # DELETE /u'sers/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:first_name, :last_name, :fb_access_token, :photo)
    end
  end
end
