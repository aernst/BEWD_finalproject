class Year < ActiveRecord::Base
	belongs_to :user

	def self.search_for(query)
		where('task LIKE :query', query: "%#{query}%")
	end
	
end
