class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :user_id
      t.date :date
      t.integer :week_num
      t.text :task

      t.timestamps
    end
  end
end
