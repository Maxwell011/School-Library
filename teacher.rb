require './person'

class Teacher < Person
  def initialize(age, id, specialization, name = 'Unknown', parents_permission: true)
    @specialization = specialization
    super(age, id, name, parents_permission: parents_permission)
  end

  def can_use_services?
    true
  end
end
