

class View

  def create_gossip
    puts "Enter your name: " 
    author = gets.chomp
    puts "Enter the gossip: " 
    content = gets.chomp
    return params = {"content": content, "author": author }
  end




  def index_gossips(gossips)
    puts '-' * 50
    gossips.each do |row_gossip|
      print row_gossip[0]
      puts  " -> " + row_gossip[1]
    end
    puts '-' * 50
  end


  def delete_gossip
    print 'Enter the row number you want to delete: > '
    index = gets.chomp
  end




end
