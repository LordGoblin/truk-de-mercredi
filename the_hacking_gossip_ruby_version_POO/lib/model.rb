
class Gossip

	attr_reader :content, :author

	def initialize(author, content)
		@content = content
		@author = author
	end

	def self.all
		all_gossips = []
		File.open("db/gossip.csv", "r") do |f|
			f.each do |ligne|
				all_gossips << ligne
			end
		end
		return all_gossips
	end

	def self.supp(b, c)
		i = 0
		File.open("db/gossip.csv", "w") do |f|
			c.each do |ligne|
				i = i + 1
				if i != b
					f.write(ligne)
				end
			end
		end
	end

	def save
		a = []
		File.open("db/gossip.csv", "a") do |f|
			a = "#{@author},#{@content}\n"
 		 	f.write(a)
		end
	end
end