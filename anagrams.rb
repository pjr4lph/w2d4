def first_anagram?(str1, str2)
  anagrams = str1.chars.permutation.map(&:join)
  anagrams.include?(str2)
end

def second_anagram?(str1, str2)
  return false if str1.length != str2.length
  chars1, chars2 = str1.chars, str2.chars
  len = chars1.length - 1
  len.downto(0) do |i|
    if chars2.include?(chars1[i])
      c = chars1.delete_at(i)
      chars2.delete_at(chars2.index(c))
    end
  end
  return chars1.empty? && chars2.empty?

end

def third_anagram?(str1, str2)
  start = Time.now
  str1.chars.sort == str2.chars.sort
  puts Time.now - start
end

def fourth_anagram?(str1, str2)
  start = Time.now
  h1, h2 = Hash.new(0), Hash.new(0)
  str1.chars.each do |c|
    h1[c] += 1
  end
  str2.chars.each do |c|
    h2[c] += 1
  end
  puts Time.now - start
  h1 == h2
end

def one_hash_anagram?(str1, str2)
  start = Time.now
  h = Hash.new(0)
  str1.chars.each do |c|
    h[c] += 1
  end
  str2.chars.each do |c|
    h[c] -= 1
  end
  puts Time.now - start
  h.values.all? { |v| v == 0 }
end

a = (('a'..'z').to_a * 200000).shuffle.join
b = (('a'..'z').to_a * 200000).shuffle.join

third_anagram?(a, b)
fourth_anagram?(a, b)
