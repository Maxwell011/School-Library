require_relative '../person'
require_relative '../rental'
require_relative '../book'

describe Person do
  context 'when an instance created and parameter passed' do
    person = Person.new 29, true, 'mankush'
    book = Book.new 'benardo', 'bello'
    rental = Rental.new '2023/01/01', book, person

    it 'expect age to be 29' do
      expect(person.age).to eql 29
    end
    it 'expect name to be mankush' do
      expect(person.name).to eql 'mankush'
    end
    it 'expect rental date to equal result date' do
      result = book.add_rental('2023/01/01', book)
      expect(result.date).to eq rental.date
    end
    it 'expect can_use_services to equal true' do
      expect(person.can_use_services?).to eq true
    end
  end
end
