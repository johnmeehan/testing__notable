require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @other_employee = Employee.create(name: 'Meehan', age: 36)
    @employee = Employee.create(name: 'John', age: 35)
    @employee.notes.create(body: 'hello')
    @employee.notes.create(body: 'world')
  end

  test "employee can make many notes" do
    notes_bodys = @employee.notes.map(&:body)
    assert(notes_bodys == ['hello', 'world'])
  end

  test 'employee has many notes with notable_type' do
    notes_type = @employee.notes.first.notable_type
    assert_equal(notes_type,'Employee')
  end

  test 'employee makes note about another employee' do
    note = @employee.authored_notes.create(notable: @other_employee, body: 'a employee note about an employee')
    puts note.attributes
    puts note.errors.messages
    assert_equal(note.author_id, @employee.id)
    assert_equal(note.notable_id, @other_employee.id)
    assert_equal(note.notable_type, "Employee")

    assert_includes(@other_employee.notes, note)
    assert_includes(@employee.authored_notes, note)
    refute_includes(@employee.notes, note)
  end
end
