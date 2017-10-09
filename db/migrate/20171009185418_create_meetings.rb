class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :address
      t.datetime :date

      t.timestamps
    end
  end
end
