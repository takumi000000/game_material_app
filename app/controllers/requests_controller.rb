class RequestsController < ApplicationController
  def index
    @requests = Request.order("id")
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    p "aaaaaaaaaaaaaaaaaaaaaaaa"
    @request.user_id = current_user.id
    p "#{@request.user_id}"
    if @request.save
      redirect_to requests_path
    else
      render "new"
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  private
  def request_params
    attrs = [
      :title,
      :material_kind_id,
      :delivery_date,
      :user_id,
      :specification,
      :order_user_id
    ]
    params.require(:request).permit(attrs)
  end
end
