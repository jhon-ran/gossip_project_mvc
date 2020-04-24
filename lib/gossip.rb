require 'pry'
class Gossip
  attr_accessor :author, :content, :id

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


 
end



#binding.pry