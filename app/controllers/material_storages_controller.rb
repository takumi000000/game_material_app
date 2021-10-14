class MaterialStoragesController < ApplicationController
  def index
    @materials = MaterialStorage.order("id")
  end

  def new
    @material = MaterialStorage.new
  end

  def create
    @material = MaterialStorage.new(material_storage_params)
    tempfile = params[:material_storage][:file_name]
    original_filename = tempfile.original_filename
    @material.file_name = original_filename
    @material.user_id = current_user.id
    if @material.save
      File.binwrite("public/images/" + original_filename, tempfile.read)
      redirect_to material_storages_path
    else
      render "new"
    end
  end

  def show
    @material = MaterialStorage.find(params[:id])
  end

  private
  def material_storage_params
    attrs = [
      :file_name,
      :title,
      :user_id,
      :material_kind_id,
      :material_genre_id,
      :request_id,
      :start_date,
      :completion_date
    ]
    params.require(:material_storage).permit(attrs)
  end

end
