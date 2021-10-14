class ApplicationController < ActionController::Base
  before_action only: [:new, :create, :edit, :update] do
    @kinds = MaterialKind.order("id")
    @kinds_option = []
    @kinds.each do |kind|
      @kinds_option.push([kind.name,kind.id])
    end
    @genres = MaterialGenre.order("id")
    @genres_option = []
    @genres.each do |genre|
      @genres_option.push([genre.name,genre.id])
    end
  end

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:check_job])
  end
end
