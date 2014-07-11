class Changetoint < ActiveRecord::Migration
  def change
  	change_column :days, :user_id, :integer
  end
end
