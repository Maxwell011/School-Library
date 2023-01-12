require_relative './book'
require_relative './person'
require_relative './teacher'
require_relative './student'
require 'json'

def save_book(title, author)
  obj = {
    title: title,
    author: author
  }

  return unless File.exist?('./books.json')

  file = File.open('./books.json')
  # rubocop:disable Style/ZeroLengthPredicate
  if file.size.zero?
    book = [obj]
  else
    book = JSON.parse(File.read('./books.json'))
    book << obj
  end

  file.close

  addfile = File.open('./books.json', 'w')
  addfile.write(JSON.generate(book))
  addfile.close
end

def load_books
  if File.exist?('./books.json')
    file = File.open('./books.json')

    if file.size.zero?
      'No book records yet.'
    else
      books = JSON.parse(File.read('./books.json'))

      books.each do |book|
        book = Book.new(book['title'], book['author'])
        @book << book
      end
    end

    file.close

  else
    puts 'Please add books.'
  end
  puts 'Books:'
  @book.each { |b| puts "Book Title: #{b.title}, Book Author: #{b.author}" } unless @book.empty?
end

def save_student(name, age, parent_permission)
  obj = {
    type: 'Student',
    name: name,
    age: age,
    parent_permission: parent_permission
  }

  return unless File.exist?('./person.json')

  file = File.open('./person.json')

  if file.size.zero?
    student = [obj]
  else
    student = JSON.parse(File.read('./person.json'))
    student << obj
  end

  file.close

  addfile = File.open('./person.json', 'w')
  addfile.write(JSON.generate(student))
  addfile.close
end

def save_teacher(name, age, specialization)
  obj = {
    type: 'Teacher',
    name: name,
    specialization: specialization,
    age: age
  }

  return unless File.exist?('./person.json')

  file = File.open('./person.json')

  if file.size.zero?
    teacher = [obj]
  else
    teacher = JSON.parse(File.read('./person.json'))
    teacher << obj
  end

  file.close

  addfile = File.open('./person.json', 'w')
  addfile.write(JSON.generate(teacher))
  addfile.close
end

def load_person
  return unless File.exist?('./person.json')

  file = File.open('./person.json')
  if File.empty?('./person.json')
    puts 'No person records yet.'
  else
    people = JSON.parse(File.read('./person.json'))
    puts 'Person list:'
    people.each do |person|
      if person['option'] == 'Student'
        student = Student.new(person['age'], person['name'])
        @people << student
      else
        teacher = Teacher.new(person['specialization'], person['age'], person['name'])
        @people << teacher
      end
      puts "Name: #{person['name']}, Age: #{person['age']}, [#{person['type']}]"
    end
  end
  file.close
end

def load_rentals
  if File.exist?('./rentals.json')
    file = File.open('./rentals.json')

    if file.size.zero?
      puts 'No rentals yet.'
    else
      rentals = JSON.parse(File.read('./rentals.json'))
      puts 'Rented books: '
      rentals.each do |rental|
        puts "Name: #{rental['people']}, Book: #{rental['book']} on: #{rental['date']}"
      end
    end
    file.close
  else
    puts 'No rent records yet.'
  end
end

def save_rental(date, people, book)
  obj = {
    date: date,
    people: people.name,
    book: book.title
  }

  return unless File.exist?('./rentals.json')

  file = File.open('./rentals.json')

  if file.size.zero?
    rental = [obj]
  else
    rental = JSON.parse(File.read('./rentals.json'))
    rental << obj
  end
  file.close
  # rubocop:enable Style/ZeroLengthPredicate
  addfile = File.open('./rentals.json', 'w')
  addfile.write(JSON.generate(rental))
  addfile.close
end
