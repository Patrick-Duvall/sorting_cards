require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require "./lib/guess"

class GuessTest < Minitest::Test
  def test_card_gettter
    card = Card.new('Ace' , 'hearts')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal card, guess.card
  end

  def test_response_gettter
    card = Card.new('Ace' , 'hearts')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal 'Ace of Hearts', guess.response
  end

  def test_correct_true_when_ought_be
    card = Card.new('Ace' , 'hearts')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal true, guess.correct?
  end

  def test_correct_false_when_ought_be
    card = Card.new('King' , 'hearts')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal false, guess.correct?
  end

  def test_feedback_returns_correct_when_ought
    card = Card.new('Ace' , 'hearts')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal "Correct!", guess.feedback
  end

  def test_feedback_returns_incorrect_when_ought
    card = Card.new('King' , 'spades')
    guess = Guess.new('Ace of Hearts' , card)
    assert_equal "Incorrect.", guess.feedback
  end

end

# * `initialize(string, Card)` - A guess is initialized with two arguments. The first is a string representing a response to a card in the form of `<value> of <suit>`. The second argument is a `Card` object representing the card being guessed.
# * `response` - This method returns the response
# * `card` - This method returns the Card
# * `correct?` - This method returns a boolean indicating if the response correctly guesses the value and suit of the Card
# * `feedback` - This method either returns `"Correct!"` or `"Incorrect."` based on whether the guess was correct or not
