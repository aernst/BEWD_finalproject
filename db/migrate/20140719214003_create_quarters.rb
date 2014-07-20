class CreateQuarters < ActiveRecord::Migration
  def change
    create_table :quarters do |t|
      t.integer :user_id
      t.date :date
      t.integer :quarter_num
      t.text :task
      t.boolean :completed

      t.timestamps
    end
  end
end
