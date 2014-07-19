class ChangeDefaultForCompleted < ActiveRecord::Migration
	def change
	  change_table :weeks do |t|
	  t.change :completed, :boolean, :default => false
	end
	end

end
