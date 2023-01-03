class person 
   attr_accessor :id, :name, :age

  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  private

  def of_age?
    return true if @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parents_permission == true
  end

end