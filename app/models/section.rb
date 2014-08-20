class Section  < ActiveRecord::Base
  has_many :lessons
  validates :name, :presence => true

  def show_lessons_from_section
    lessons_for_this_section = []
    Lesson.all.each do |lesson|
      if lesson.section_id = self.id
        lessons_for_this_section << lesson
      end
    end
    lessons_for_this_section
  end

end
