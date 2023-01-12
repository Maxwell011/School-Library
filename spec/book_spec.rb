require_relative '../book'
require_relative '../person'
require_relative '../rental'

describe Book do
  context 'when input passed to the instance book' do
    person = Person.new(29, 'mankush', parent_permission: true)
    book = Book.new 'benardo', 'bello'
    rental = Rental.new '2023/01/01', book, person

    it 'expect title to be benardo' do
      expect(book.title).to eql 'benardo'
    end

    it 'expect author to be bello' do
      expect(book.author).to eql 'bello'
    end

    it 'expect rental date to equal result date' do
      result = book.add_rental('2023/01/01', person)
      expect(result.date).to eq rental.date
    end
  end
end
