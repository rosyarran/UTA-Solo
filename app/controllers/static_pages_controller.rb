class StaticPagesController < ApplicationController
  
  def index
    @sections = Section.all
  end
  
  def show
    @section = Section.find(params[:id])
  end
  
  private
  
  def section_params
    params.require(:section).permit(:title, :description)
  end
end
