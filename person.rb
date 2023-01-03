class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parents_permission: true)
    @id = id
    @name = name
    @age = age
    @parents_permission = parents_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parents_permission
  end
end
