module Luhn
  def self.is_valid?(number)
    
    string = number.to_s
    arry = string.chars

    strArray = arry.map(&:to_i)

    checkArray = []

    strArray.each_with_index do |x, index|
      if index.even?
        x *= 2
        if x > 9
          x -= 9
        end
      end

      checkArray << x
    end

    checkNum = 0

    checkArray.each do |x|
      checkNum += x
    end

    return checkNum % 10 == 0 
    
  end
end
