require 'lru_cache'
require 'rspec'

RSpec.describe LRUCache do
  subject(:cache) {LRUCache.new(4)}
  describe "#initialize" do
    it "has an empty array holder" do
      expect(cache.holder).to be_empty
    end

    it "has a limit of 4" do
      expect(cache.limit).to eq(4)
    end
  end

  describe "#count" do
    it "counts how many items are in the cache" do
      cache.add("item1")
      cache.add("item2")
      expect(cache.count).to eq(2)
    end
  end

  describe "#add" do
    it "adds an item to the cache" do
      cache.add("new_item")
      cache.add("my_item")
      cache.add("new_item")
      expect(cache.holder).to include("new_item")
    end
    it "if item is in cache already it deletes it before adding it." do
      cache.add("new_item")
      cache.add("my_item")
      cache.add("new_item")
      expect(cache.holder[0]).to eq("my_item")
    end
    it "if item is in cache it adds it to the end" do
      cache.add("new_item")
      cache.add("my_item")
      cache.add("new_item")
      expect(cache.holder[-1]).to eq("new_item")
    end
  end
end
