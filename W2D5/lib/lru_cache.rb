class LRUCache
  attr_accessor :holder
  attr_reader :limit
  def initialize(limit)
    @limit = limit
    @holder = []
  end

  def count
    @holder.length
  end

  def add(el)
    if has?(el)
      @holder.delete(el)
      @holder.push(el)
    elsif self.count < @limit
      @holder.push(el)
    else
      @holder.push(el)
      @holder.shift
    end
  end

  def show
    p @holder
  end

  private
  def has?(el)
    @holder.include?(el)
  end

end

if __FILE__ == $PROGRAM_NAME
  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
end
