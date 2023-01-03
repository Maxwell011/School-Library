class Person
  attr_reader :id, :name, :age

  def initialize(id, age, parents_permission = :true, name = 'Unknown')
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
    of_age? || @parents_permission == true
  end
end
