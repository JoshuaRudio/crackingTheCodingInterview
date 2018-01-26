# Write a method to replace all spaces in a string with "%20".

def urlify(str, int)
  str_chars = str.split('', int + 1)
  str_chars.map! do |i|
    i == " " ? i = "%20" : i
  end
  str_chars.delete_at(int)
  puts str_chars.join('')
end

urlify("Mr John Smith     ", 13)
