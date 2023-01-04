require './person'

class Student < Person
  def initialize(id, name, age, classroom, parents_permission = 'Unknown')
    @classroom = classroom
    super(id, name, age, parents_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end