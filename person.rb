require './nameable'
require './base_decorater'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  def initialize(age, name = 'unknown', parents_permission: true)
    super()
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parents_permission = parents_permission
  end
  attr_accessor :name, :age
  attr_reader :id

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parents_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
Capitalized_Person = CapitalizeDecorator.new(person)
print Capitalized_Person.correct_name
puts "\n\n"
Capitalized_Trimmed_Person = TrimmerDecorator.new(Capitalized_Person)
print Capitalized_Trimmed_Person.correct_name