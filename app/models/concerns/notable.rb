require 'active_support/concern'

module Notable
  extend ActiveSupport::Concern

  included do
    has_many :notes, as: :notable

    # Notes employee writes about someone else 
    has_many :authored_notes, class_name: 'Note', foreign_key: :author_id
  end

end