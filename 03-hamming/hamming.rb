class Hamming

  def self.compute(input1, input2)
    raise ArgumentError, "Strands must be identical lengths" if input1.length != input2.length
    strand1 = input1.split('')
    strand2 = input2.split('')

    return strand1.zip(strand2).count { |strand1, strand2| strand1 != strand2 }
  end

end


