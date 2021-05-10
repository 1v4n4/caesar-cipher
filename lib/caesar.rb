#!/usr/bin/env ruby

class CaesarCipher
  # rubocop: disable Metrics/CyclomaticComplexity
  # rubocop: disable Metrics/PerceivedComplexity
  def caesar_cipher(str, num)
    # rubocop: disable Style/StringChars
    arr = str.split('')
    # rubocop: enable Style/StringChars
    n = num > 26 || num < -26 ? num.abs % 26 : num
    cipher = []
    alphabeth = ('a'..'z').to_a
    alphabeth.concat(alphabeth)
    alpha = ('A'..'Z').to_a
    alpha.concat(alpha)
    arr.each do |i|
      if alphabeth.include?(i)
        indx = alphabeth.index { |x| x == i }
        num >= -25 ? cipher.push(alphabeth[indx + n]) : cipher.push(alphabeth[indx - n])
      elsif alpha.include?(i)
        indx = alpha.index { |x| x == i }
        num >= -25 ? cipher.push(alpha[indx + n]) : cipher.push(alpha[indx - n])
      else
        cipher.push(i)
      end
    end
    cipher.join
  end
  # rubocop: enable Metrics/CyclomaticComplexity
  # rubocop: enable Metrics/PerceivedComplexity
end
