require('minitest/autorun')
require('minitest/pride')
require_relative('../single_class_lab_homework')

class TestStudent < Minitest::Test

    def test_student_name()
        student = Student.new('Graham', 'e_33')
        assert_equal('Graham', student.name())
    end

    def test_student_cohort()
      student = Student.new('Cameron', 'e_33')
      assert_equal('e_33', student.cohort())
    end

    def test_update_student_name()
      student = Student.new('Graham', 'e_33')
      student.name = "John"
      assert_equal("John", student.name())
    end

    def test_update_cohort()
      student = Student.new('Cameron', 'e_33')
      student.cohort = "e_34"
      assert_equal("e_34", student.cohort())
    end

    def test_student_can_talk()
      student = Student.new('Graham', 'e_33')
      assert_equal('I can talk!', student.talk())
    end

    def test_favourite_program_language()
      student = Student.new('Graham', 'e_33')
      result = student.favourite_language('Ruby')
      assert_equal('I love Ruby!', student.favourite_language('Ruby'))
    end

end
