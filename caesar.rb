#!/usr/bin/env ruby

# rubocop: disable Style/StringChars
def caesar_cipher(str, num)
  arr = str.split('')
  cipher = []
  alphabeth = ('a'..'z').to_a
  alpha = ('A'..'Z').to_a
  alphabeth.concat(alphabeth).concat(alpha).concat(alpha)
  arr.each do |i|
    if alphabeth.include?(i)
      indx = alphabeth.index { |x| x == i }
      cipher.push(alphabeth[indx + num])
    else
      cipher.push(i)
    end
  end
  cipher.join
end
# rubocop: enable Style/StringChars
