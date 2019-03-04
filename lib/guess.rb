require "./lib/card"


class Guess
  attr_reader :card , :response
  def initialize(string,card)
    @response = string
    @card = card
  end

  def correct?
    @response == @card.exact
  end

  def feedback
    correct? ? "Correct!" : "Incorrect."
  end



end

# * `initialize(string, Card)` - A guess is initialized with two arguments. The first is a string representing a response to a card in the form of `<value> of <suit>`. The second argument is a `Card` object representing the card being guessed.
# * `response` - This method returns the response
# * `card` - This method returns the Card
# * `correct?` - This method returns a boolean indicating if the response correctly guesses the value and suit of the Card
# * `feedback` - This method either returns `"Correct!"` or `"Incorrect."` based on whether the guess was correct or not
