require 'controller'

class Router

	def initialize
		puts "lol"
		@controller = Controller.new
	end

	def perform
		puts "bienvenur dans le project gossip"
		while true

			puts "tu veux faire quoi?"
			puts "1.créer un gossip"
			puts "2.afficher tous les gossip"
			puts "3.suprimer gossip"
			puts "4.quitter l'app"
			params = gets.chomp.to_i

			case params
			when 1
				puts "tu as choisi de créer un gossip"
				@controller.create_gossip
			when 2
				puts "tu as choisi d'afficher tous les gossip"
				@controller.index_gossips
			when 3
				puts "tu as choisi de supp un gossip"
				@controller.supp_gossip
			when 4
				puts "a++"
				break
			else
				puts "ce choix n'existe pas..."
			end
		end
	end
end