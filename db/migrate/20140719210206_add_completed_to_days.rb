class AddCompletedToDays < ActiveRecord::Migration
  def change
    add_column :days, :completed, :boolean, :default => false
  end
end
