
class Card
  RANKS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" =>14 }

  SUITS = {"Clubs" => 0.1, "Diamonds" => 0.2, "Hearts" => 0.3, "Spades" => 0.4}

attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit.capitalize
  end

  def exact
    "#{@value} of #{@suit}"
  end

  def exact_value
    SUITS[@suit] + RANKS[@value]
  end


end
