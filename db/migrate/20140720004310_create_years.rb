class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :user_id
      t.date :date
      t.integer :quarter_num
      t.text :task
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
