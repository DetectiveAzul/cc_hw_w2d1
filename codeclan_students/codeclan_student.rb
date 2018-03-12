class Student
  def initialize(student_name, cohort_number)
    @name = student_name
    @cohort_number = cohort_number
  end

  def get_name()
    return @name
  end

  def set_name(new_name)
    @name = new_name
  end

  def get_cohort_number()
    return @cohort_number
  end

  def set_cohort_number(new_cohort_number)
    @cohort_number = new_cohort_number
  end

  def talks()
    return "I can talk!"
  end

  def says_favourite_language(fave_language)
    return "I love #{fave_language}"
  end
end
