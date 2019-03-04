
class Card
attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit.capitalize
  end

  def exact
    "#{@value} of #{@suit}"
  end


end
