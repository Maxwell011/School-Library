require './person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parents_permission: true)
    @specialization = specialization
    super(age, name, parents_permission: parents_permission)
  end

  def can_use_services?
    true
  end
end
