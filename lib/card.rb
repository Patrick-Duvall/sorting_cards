
class Card
#   RANKS = { "Two" => 2, "Three" => 3, "Four" => 4, "Five" => 5, "Six" => 6, "Seven" => 7, "Eight" => 8, "Nine" => 9, "Ten" => 10, "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" =>14 }
#
#   SUITS = {"Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}

attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit.capitalize
  end

  def exact
    "#{@value} of #{@suit}"
  end


end
