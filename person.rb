require './nameable'
require './base_decorator'
require './capitalize_decorator'
require './trimmer_decorator'
require './book'
require './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals, :parents_permission

  def initialize(age, parents_permission, name = 'unknown')
    super()
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parents_permission = parents_permission
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

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
Capitalized_Person.correct_name
puts "\n\n"
Capitalized_Trimmed_Person = TrimmerDecorator.new(Capitalized_Person)
Capitalized_Trimmed_Person.correct_name
