class Round
  attr_reader :deck , :guesses, :counter
  def initialize(deck)
    @deck = deck
    @guesses = []
    @counter = 0
  end

  def current_card
    deck[@counter]
  end

  def record_guess(hash)
    new_guess = Guess.new("#{hash[:value]} of #{hash[:suit]}", deck[@counter])
      @guesses << new_guess
    @counter +=1
  end

  def number_correct
    @guesses.select(&:correct?).count
  end
  def percent_correct
    (number_correct.to_f * 100 / @guesses.length).round(2)
  end
end
