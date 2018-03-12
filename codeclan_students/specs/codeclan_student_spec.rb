require 'minitest/autorun'
require_relative '../codeclan_student'
class StudentTests < MiniTest::Test
  def setup
    @jaime = Student.new("Jaime", 20)
    @kate = Student.new("Kate", 19)
    @raul = Student.new("Raúl", 15)
    @sian = Student.new("Sian", 7)
  end

  def test_get_name()
    jaime_name = @jaime.get_name()
    kate_name = @kate.get_name()
    assert_equal("Jaime",jaime_name)
    assert_equal("Kate", kate_name)
  end

  def test_get_cohort()
    raul_cohort = @raul.get_cohort_number()
    sian_cohort = @sian.get_cohort_number()
    assert_equal(15,raul_cohort)
    assert_equal(7,sian_cohort)
  end

  def test_set_name()
    @kate.set_name("Marta")
    assert_equal("Marta",@kate.get_name())
  end

  def test_set_cohort()
    @sian.set_cohort_number(8)
    assert_equal(8,@sian.get_cohort_number())
  end

  def test_student_talks()
    result = @raul.talks()
    assert_equal("I can talk!", result)
  end

  def test_student_says_favourite_language()
    result = @jaime.says_favourite_language("C#")
    assert_equal("I love C#", result)
  end
end
