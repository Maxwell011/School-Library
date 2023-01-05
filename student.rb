require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, name, age, classroom, parents_permission = 'Unknown')
    @classroom = classroom
    super(id, name, age, parents_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
