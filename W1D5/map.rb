class Map
  def initialize
    @holder = []
  end

  def assign(key, value)
    if key?(key)
      @holder[idx_of_key(key)][1] = value
    else
      @holder.push([key, value])
    end
  end

  def remove(key)
    return nil if key?(key) == false
    @holder.delete_at(idx_of_key(key))
  end

  def lookup(key)
    @holder.select {|keys| key == keys[0]}
  end

  def show
    p @holder
  end

  private
  def idx_of_key(key)
    return nil if key?(key) == false
    @holder.each_with_index do |keys, index|
      return index if keys[0] == key
    end
  end


  def key?(key)
    @holder.select {|keys| return true if key == keys[0]}
    false
  end
end

if __FILE__ == $0
  map = Map.new
  map.assign(:name, "Bill")
  map.assign(:age, 22)
  map.assign(:month, "May")
  map.show
  map.remove("Lkjkljsdlkfj")
  map.show
  map.assign(:name, "changed")
  map.show
  map.remove(:name)
  map.show
  p map.lookup(:name)
  p map.lookup(:age)
end
