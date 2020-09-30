# row = []
# row[0] = "Liverpool"
# row[1] = "15"
#
# name = row[0]
# wins =row[1].to_i

class Performance
  attr_accessor :name, :wins

  def initialize
    @data = []
  end
end

row = Performance.new
row.name = "Liverpool"
row.wins = "15"

name = row.name
wins = row.wins.to_i
