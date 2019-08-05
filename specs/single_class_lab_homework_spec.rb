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


end
