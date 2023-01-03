require './person'

class Teacher < Person
  def initialize(age, classroom, name = "Unknown", parent_permission: true)
  @classroom = classroom
  super(age, name, parent_permission: parent_permission)
	end

  def can_use_services?
    true
  end
end
