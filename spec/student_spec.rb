require_relative '../student'

describe Student do
  context 'when an instance created and parameter passed' do
    student = Student.new(20, 'math', 'peter', parent_permission: false)
    @student = Student.new(20, 'math', 'peter', parent_permission: false)
    it 'expect age to be 20' do
      expect(student.age).to eql 20
    end
    it 'expect name to be peter' do
      expect(student.name).to eql 'peter'
    end
    it 'expect classroom to be math' do
      expect(student.classroom).to eql 'math'
    end
  end
end
