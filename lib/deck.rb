

class Deck < Array

  RANKS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" =>14 }

  SUITS = {"Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}
  def cards
    self
  end

  def my_sort
    swap = true
      while swap
        swap = false
        (self.length - 1).times do |x|
          if RANKS[self[x].value] > RANKS[self[x+1].value]
            self[x], self[x+1] = self[x+1],self[x]
            swap = true
          elsif RANKS[self[x].value] == RANKS[self[x+1].value]
            if SUITS[self[x].suit] > SUITS[self[x+1].suit]
              self[x], self[x+1] = self[x+1],self[x]
              swap = true
            end
          end
        end
      end
    self
  end



end
