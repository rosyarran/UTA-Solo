class SectionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @sections = Section.all
  end
  
  def new
    @section = Section.new
  end
  
  def create
    current_user.sections.create(section_params)
    redirect_to sections_path(@section)
  end
  
  def show
    @section = Section.find(params[:id])
  end
  
  private
  
  def section_params
    params.require(:section).permit(:title, :description)
  end
end
