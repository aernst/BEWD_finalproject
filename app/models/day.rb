class Day < ActiveRecord::Base
	belongs_to :user

	def self.search_for(query)
		where('date LIKE :query OR task LIKE :query', query: "%#{query}%")
	end	

end
