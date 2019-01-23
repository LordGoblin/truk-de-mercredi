require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'router.rb'
require 'model.rb'

#author = "max"
#content = "blabla"

#my_gossip = Gossip.new("max", "blabla")
#puts "lol"
#my_gossip.save


Router.new.perform





#require 'scrapper.rb'
#allVille = Ville.new
#puts allVille.mairie


