class UserController < ApplicationController
  def index
    @users = User.order("created_at").reverse
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.introduction = params[:user][:introduction]
    if @user.save
      redirect_to user_path
    else
      render edit_user_path
    end
  end

  def self_requests

  end

  def self_material_storages
  end
end
