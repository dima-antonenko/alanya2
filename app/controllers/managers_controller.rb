class ManagersController < ApplicationController
  before_action :set_manager, only: [:show]

  def show
    
  end

  def index
    @project_categories = Manager.all
  end

  def destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager
      @manager = Manager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manager_params
      params.require(:manager)
    end
end
