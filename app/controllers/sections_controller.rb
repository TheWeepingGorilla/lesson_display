class SectionsController < ApplicationController
  def index
    @sections = Section.all
    @lesson_array = []
    @sections.all.each do |section|
      @lesson_array << section.show_lessons_from_section
    end
    render('sections/index.html.erb')
  end

  # def show
  #   @section = section.find(params[:id])
  #   @lessons =
  #   render('sections/show.html.erb')
  # end
end
