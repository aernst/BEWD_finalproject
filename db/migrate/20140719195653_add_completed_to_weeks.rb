class AddCompletedToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :completed, :boolean, :default => false
  end
end
