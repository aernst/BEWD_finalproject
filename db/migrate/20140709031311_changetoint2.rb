class Changetoint2 < ActiveRecord::Migration
  def change
  	change_column :weeks, :user_id, :integer
  end
end
