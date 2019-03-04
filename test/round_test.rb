require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require "./lib/guess"
require "./lib/deck"
require "./lib/round"
require "pry"

class GuessTest < Minitest::Test

  def test_deck_getter
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    assert_equal cards , round.deck
  end

  def test_guesses_at_start
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    assert_equal [] , round.guesses
  end

  def test_guesses_increase_counter
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    assert_equal 0, round.counter
    round.record_guess({value: '3', suit: 'Hearts'})
    assert_equal 1, round.counter
  end

  def test_guesses_accurate_after_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.record_guess({value: '3', suit: 'Hearts'})
    assert_equal true , round.guesses[0].correct?
    assert_equal "Correct!" , round.guesses[0].feedback
    round.record_guess({value: '4', suit: 'Hearts'})
    assert_equal false , round.guesses[1].correct?
    assert_equal "Incorrect." , round.guesses[1].feedback
  end

  def test_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.record_guess({value: '3', suit: 'Hearts'})
    round.record_guess({value: '4', suit: 'Hearts'})
    round.record_guess({value: '5', suit: 'Diamonds'})
    assert_equal 2 , round.number_correct
  end

  def test_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.record_guess({value: '3', suit: 'Hearts'})
    round.record_guess({value: '4', suit: 'Hearts'})
    round.record_guess({value: '5', suit: 'Diamonds'})
    
    assert_equal 66.67 , round.percent_correct
  end

end
