class Org < ApplicationRecord
	has_many :events

	attribute :name, :string

	def last_n_events(n)
		if !n.is_a?(Integer)
			puts "Error: must provide an Integer for n"
			return
		end

		self.events.order(created_at: :desc).limit(n)
	end

	def last_n_events_for_host(n, host)
		if !n.is_a?(Integer)
			puts "Error: must provide an Integer for n"
			return
		end
		if !host.is_a?(String)
			puts "Error: must provide a String for hostname"
			return
		end

		self.events.where(hostname: host).order(created_at: :desc).limit(n)
	end
end
