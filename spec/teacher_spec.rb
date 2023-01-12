require_relative '../teacher'

describe Teacher do
  context 'when an instance created and parameter passed' do
    teacher = Teacher.new(34, 'biology', 'ranford')
    it 'expect age to be 34' do
      expect(teacher.age).to eql 34
    end
    it 'expect name to be ranford' do
      expect(teacher.name).to eql 'ranford'
    end
  end
end
