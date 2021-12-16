class RequestDetailsController < ApplicationController
  def new
    @request_detail = RequestDetail.new()
  end
  def create
    @request_detail = RequestDetail.new(request_detail_params)
  end
  private
  def request_details
    attrs = [
      :request_id,
      :material_genre_id,
      :material_size,
      :specification
    ]
    params.require(:request_detail).permit(attrs)
  end
end
