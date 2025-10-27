# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher(s, shift_len)
  s.split("")
    .map do |s|
      if (s.ord >= 65 && s.ord <= 90) || (s.ord >= 97 && s.ord <= 122)
        idx = s.ord + shift_len
        if idx <= 90 + shift_len
          if idx % 90 < 65
            idx = 64 + (idx % 90)
          end
        else
          if idx % 122 < 97
            idx = 96 + (idx % 122)
          end
        end
        idx.chr
      else
        s
      end
    end.join
end

puts caesar_cipher("What a string!", 5)
