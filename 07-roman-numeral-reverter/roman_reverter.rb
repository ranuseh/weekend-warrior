class Roman

  def self.reverter(input)
    roman_hash = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
    
    total = 0
    split_input = input.split('')
    split_input.each_with_index do |value, index|
      current_char = roman_hash[value]
      next_char = roman_hash[split_input[index + 1]]

      if next_char.nil? || current_char >= next_char
        total += current_char
      else
        result = current_char * -1
        total += result
      end
    end
    total
  end

end
