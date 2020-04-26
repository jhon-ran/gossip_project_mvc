require 'pry'
class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv",'a') { |f|
        f << [@author,@content]
    }
  end


  def self.all
    all_gossips = []
    CSV.foreach("db/gossip.csv", quote_char: '"', row_sep: :auto, headers: true) do |row|
      all_gossips << row
    end
    return all_gossips
  end


  def index_gossips(gossips)
    puts '-' * 50
    gossips.each do |row_gossip|
      print row_gossip[0]
      puts  " -> " + row_gossip[1]
    end
    puts '-' * 50
  end

  def self.delete_gossip(param)
    csv_ary = CSV.read('db/gossip.csv')
    csv_ary.delete_at(param - 1)
    CSV.open('db/gossip.csv', "w") do |csv|
      csv_ary.each { |v|
        csv << v
      }
    end
  end


end



#binding.pry