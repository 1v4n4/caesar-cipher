#!/usr/bin/env ruby

# rubocop: disable Style/StringChars
def caesar_cipher(str, num)
  arr = str.split('')
  num > 26 || num<-26 ? n=num.abs%26 : n=num
  cipher = []
  alphabeth = ('a'..'z').to_a
  alphabeth = alphabeth.concat(alphabeth)
  alpha = ('A'..'Z').to_a
  alpha = alpha.concat(alpha)
  arr.each do |i|
    if alphabeth.include?(i)
      indx = alphabeth.index { |x| x == i }
      num>=-25 ? cipher.push(alphabeth[indx + n]) : cipher.push(alphabeth[indx - n])
    elsif alpha.include?(i)
      indx = alpha.index { |x| x == i }
      num>=-25 ? cipher.push(alpha[indx + n]) : cipher.push(alpha[indx - n])
    else
      cipher.push(i)
    end
  end
  cipher.join
end
# rubocop: enable Style/StringChars

 p caesar_cipher('Mjqqt, Btwqi!', -31)
