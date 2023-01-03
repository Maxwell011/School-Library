require './person'

class Student < Person
  def initialize(age,id,classroom, name = 'Unknown', parents_permission: true)
    @classroom = classroom
    super(age,id, name, parents_permission: parents_permission)
  end

  def play_hooky
    puts '¯\(ツ)/¯'
  end
end
