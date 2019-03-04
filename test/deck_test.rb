require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require "./lib/guess"
require "./lib/deck"

class DeckTest < Minitest::Test
  def test_deck_is_an_array_of_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    assert_equal true, deck.is_a?(Array)
  end

  def test_count_works
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    assert_equal 3, deck.count
  end

  def test_cards_works
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1,card_2,card_3]
    deck = Deck.new(cards)
    assert_equal cards, deck.cards
  end


end
