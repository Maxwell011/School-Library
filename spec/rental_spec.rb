require_relative '../rental'
require_relative '../book'
require_relative '../person'
describe Rental do
  context 'when an instance created and parameter passed' do
    person = Person.new 29, true, 'mankush'
    book = Book.new 'benardo', 'bello'
    rental = Rental.new '2023/01/01', book, person
    it 'expect date to be 2023/01/01' do
      expect(rental.date).to eql '2023/01/01'
    end
    it 'expect title to be benardo' do
      expect(book.title).to eql 'benardo'
    end

    it 'edxpect author to be bello' do
      expect(book.author).to eql 'bello'
    end
    it 'expect age to be 29' do
      expect(person.age).to eql 29
    end
    it 'expect name to be mankush' do
      expect(person.name).to eql 'mankush'
    end
  end
end
