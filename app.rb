# From here you call application that runs the game
require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'

Router.new.perform

# binding.pry
