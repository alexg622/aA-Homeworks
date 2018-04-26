def longest_fish(fishes)
  longest = ""
  for i in 0...fishes.length
    for j in i+1...fishes.length
      if fishes[i].length > fishes[j].length
        longest = fishes[i] if fishes[i].length > longest.length
      else
        longest = fishes[j] if fishes[j].length > longest.length
      end
    end
  end
  longest
end

def merge_sort(fishes)
  return fishes if fishes.length < 2
  middle = fishes.length/2
  left = merge_sort(fishes.take(middle))
  right = merge_sort(fishes.drop(middle))
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first.length > right.first.length ? right.shift : left.shift)
  end
  result + left + right
end

def step_once(fishes)
  longest = ""
  for i in 0...fishes.length-1
    if fishes[i].length > fishes[i+1].length
      longest = fishes[i] if fishes[i].length > longest.length
    else
      longest = fishes[i+1] if fishes[i+1].length > longest.length
    end
  end
  longest
end

def slow_dance(direction, tiles)
  for i in 0...tiles.length
    return i if direction == tiles[i]
  end
end

def fast_dance(direction, tiles)
  tiles.index(direction)
end


if __FILE__ == $PROGRAM_NAME
    fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    p longest_fish(fishes)
    p merge_sort(fishes).last
    p step_once(fishes)
    tiles = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
    p slow_dance("up", tiles)
    p slow_dance("right-down", tiles)
    p fast_dance("up", tiles)
    p fast_dance("right-down", tiles)
end
