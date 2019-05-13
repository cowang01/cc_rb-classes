# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").




require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a')


class Test_CodeClan_Student < MiniTest::Test

  def setup
    @student1 = CodeClan_Student.new("Jason", "G14")
    @student2 = CodeClan_Student.new("Lisa", "G15")
  end

  def test_change_student_name
    @student1.name = "Jerry"
    assert_equal('Jerry', @student1.name())
  end

  def test_change_student_cohort
    @student1.cohort = "E27"
    assert_equal("E27", @student1.cohort())
  end

  def test_studant_talk
    talk_test = @student2.student_talk("Hello, how are you?")
    assert_equal("Hello, how are you?", talk_test)
  end

  def test_student_fav_language
    lang_test = @student2.student_fav_language("Ruby")
    assert_equal("Ruby", lang_test)
  end


end
