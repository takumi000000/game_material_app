class ContractorController < ApplicationController
  def index
  end
  def show
    @contractor = User.find(params[:id])
  end
end
