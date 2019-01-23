

class View

	def create_gossip
		puts "author??"
		author_que_tu_viens_de_demander = gets.chomp
		puts "content??"
		content_que_tu_viens_de_demander = gets.chomp

		return params = { author: author_que_tu_viens_de_demander, content: content_que_tu_viens_de_demander }
	end

	def index_gossips(gossips)
		i = 0
		gossips.each do |ligne|
			i = i + 1
			print "#{i}."
			puts ligne
		end
	end

	def supp_gossip
		puts "quel ligne supp??"
		a = gets.chomp.to_i
		return a
	end

end