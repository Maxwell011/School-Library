require './person'

class Teacher < Person
  def initialize(id, name, age, specialization, parents_permission = 'Unknown')
    @specialization = specialization
    super(id, name, age, parents_permission)
  end

  def can_use_services?
    true
  end
end