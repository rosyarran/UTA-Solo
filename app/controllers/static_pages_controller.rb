class StaticPagesController < ApplicationController
  
  def index
    @sections = Section.all
  end
  
end
