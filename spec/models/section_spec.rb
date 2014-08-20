describe Section do
  it "should display all lessons asigned to it" do
    section1 = Section.create(:name => "chapter one")
    lesson1 = Lesson.create(:name => "greetings", :section_id => section1.id)
    lesson2 = Lesson.create(:name => "numbers", :section_id => section1.id)
    lesson3 = Lesson.create(:name => "letters", :section_id => 1)
    # section1 = Section.create(:name => "chapter one")
    expect(section1.lessons).to eq [lesson1, lesson2]
  end
end
