vowels = ['a', 'e', 'i', 'o', 'u', 'y']

letters = {}

('a'..'z').each_with_index do |letter, room|
  letters[letter] = room + 1 if vowels.include?(letter)
end

puts letters
