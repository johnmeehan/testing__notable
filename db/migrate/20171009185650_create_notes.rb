class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :body
      t.references :author, foreign_key: true
      t.references :notable, polymorphic: true

      t.timestamps
    end
  end
end
