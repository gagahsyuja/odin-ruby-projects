# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(keyword, dictionary)
  filtered = dictionary.select { |word| keyword.downcase.include?(word) }
  result = Hash.new
  filtered.each do |val|
    len = keyword.length
    trimmed = keyword.downcase
    count = 0
    loop do
      trimmed.sub!(val, '')
      if trimmed.length == len
        break
      else
        len = trimmed.length
        count += 1
      end
    end
    result[val] = count
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
