class Note < ApplicationRecord
  belongs_to :author, class_name: 'Employee'
  belongs_to :notable, polymorphic: true
end
