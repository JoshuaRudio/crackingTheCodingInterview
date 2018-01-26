#Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
def is_unique?(string)
  characters = Hash.new(0)

  string.length.times do |i|
    return false if characters[string[i]] == 1
    characters[string[i]] += 1
  end
  return true
end

test = "hello"
is_unique?(test)
