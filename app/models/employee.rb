class Employee < ApplicationRecord
  include Notable
  # has_many :employee_notes, class_name: 'Note', foreign_key: 'author_id', foreign_type: "Employee"
  
end
