require_relative './nameable'
require_relative './base_decorator'
require_relative './capitalize_decorator'
# require_relative './trimmer_decorator'
require_relative './book'
require_relative './rental'

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
