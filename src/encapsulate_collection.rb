# kent = Person.new
# courses = []
# courses << Course.new("Smalltalk Programming", false)
# courses << Course.new("Appreciating Single Malts", true)
# kent.courses = courses
# assert_equal 2, kent.courses.size
# refactoring = Course.new("Refactoring", true)
# kent.courses << refactoring
# kent.courses << Course.new("Brutal Sarcasm", false)
# assert_equal 4, kent.courses.size
# kent.courses.delete(refactoring)
# assert_equal 3, kent.courses.size

kent = Person.new
kent.add_courses << Course.new("Smalltalk Programming", false)
kent.add_courses << Course.new("Appreciating Single Malts", true)
assert_equal 2, kent.courses.size
refactoring = Course.new("Refactoring", true)
kent.add_courses << refactoring
kent.add_courses << Course.new("Brutal Sarcasm", false)
assert_equal 4, kent.courses.size
kent.add_courses.delete(refactoring)
assert_equal 3, kent.courses.size

number_of_advanced_courses = person.courses.select do |course|
  course.advanced?
end.size


class Person
  def initialize
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def remove_course(course)
    @courses.delete(course)
  end

  def initialize_courses(courses)
    raise "Courses should be empty" unless @courses.empty?
    @courses += courses
  end

  def courses
    @courses.dup
  end

  def number_of_advanced_courses
    @courses.select { |course| course.advanced? }.size
  end

  def number_of_courses
    @courses.size
  end
end
