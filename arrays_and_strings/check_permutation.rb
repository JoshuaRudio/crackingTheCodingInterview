# Given two strings, write a method to decide if one is a permutation of the other

def check_permutation?(str1, str2)
  str1_chars = Hash.new(0)
  str2_chars = Hash.new(0)
  if str1.length != str2.length
    return false
  else
    str1.length.times do |i|
      str1_chars[str1[i]] += 1
      str2_chars[str2[i]] += 1
    end
  end
  return str1_chars == str2_chars
end

puts check_permutation?("dod", "odd")
puts check_permutation?("al", 'ed')
