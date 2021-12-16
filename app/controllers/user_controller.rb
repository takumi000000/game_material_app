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
    @requests = Request.where(user_id: params[:user_id])
  end

  def self_material_storages
    @materials = MaterialStorage.where(user_id: params[:user_id])
  end

  def self_orders
    @orders = Request.where(order_user_id: params[:user_id])
    @order_details = []
    @orders.each do |order|
      @order_details << RequestDetail.where(request_id: order.id)
    end
  end
end
