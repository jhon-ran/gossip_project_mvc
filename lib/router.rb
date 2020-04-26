require 'controller'

class Router
  
  
  def initialize
  	@controller = Controller.new
  end

  def perform
    puts "\n"
    puts "Welcome to the gossip project"
    puts "*" * 30
    puts "\n"
    
    while true
      puts "What do you want to do?"
      puts "1) add a gossip"
      puts "2) see gossips"
      puts "3) delete a gossip"
      puts "4) exit" 

      params = gets.chomp.to_i

      case params
      when 1
        puts "You chose to add a gossip"
        @controller.create_gossip
      when 2
        puts "You chose to see gossips"
        @controller.index_gossips
      when 3
        puts "You chose to delete a gossip"
        @controller.delete_gossip
      when 4
        puts "You chose to exit"
        break
      else
        puts "invalid option, try again"
      end

    end

  end


end