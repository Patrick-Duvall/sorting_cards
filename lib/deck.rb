
  def quicksort
      return [] if empty?

      pivot = delete_at(rand(size))
      left, right = partition(&pivot.method(:>))

      return *left.quicksort, pivot, *right.quicksort
    end


class Deck < Array


  def cards
    self
  end

#Uses bubble sort
  def my_sort
    swap = true
    while swap
      swap = false
      (self.length - 1).times do |x|
        if self[x].exact_value > self[x+1].exact_value
        self[x], self[x+1] = self[x+1],self[x]
          swap = true
        end
      end
    end
    self
  end

  def merge_sort
    if self.length <= 1
      self
    else
      mid = (self.length / 2).floor
      left = Deck.new(self[0..mid-1]).merge_sort
      right = Deck.new(self[mid..self.length]).merge_sort
      merge(left, right)
    end

  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0].exact_value < right[0].exact_value
      [left[0]] + merge(left[1..left.length], right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
  end

  # def quicksort
  #     return [] if empty?
  #
  #     pivot = delete_at(rand(size))
  #     left, right = partition(&pivot.method(:>))
  #
  #     return *left.quicksort, pivot, *right.quicksort
  #   end
  # end

end
