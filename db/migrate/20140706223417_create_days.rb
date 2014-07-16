class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :user_id
      t.date :date
      t.text :task

      t.timestamps
    end
  end
end
