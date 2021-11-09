class RequestsController < ApplicationController
  def index
    if user_signed_in?
      if current_user.check_job == 1
        @requests = Request.where(user_id: current_user.id)
      else
        @requests = Request.order("id")
      end
    else
      @requests = Request.order("id")
    end
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    @request_details = []
    param_request_details = params[:requests_details]
    param_request_details.each do |request_detail|
      @request_details << RequestDetail.new(material_size: request_detail[:size], material_genre_id: request_detail[:material_genre_id], specification: request_detail[:specification])
    end
    begin
      Request.transaction do
        @request.save!
        @request_details.each do |request_detail|
          request_detail.request_id = @request.id
          p request_detail
          request_detail.save!
        end
        redirect_to requests_path
      end
    rescue
      render "new"
    end
  end

  def show
    @request = Request.find(params[:id])
    @request_details = RequestDetail.where(request_id:@request.id)
  end

  def num
    @num = params[:num].to_i
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
