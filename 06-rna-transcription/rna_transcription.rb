class Complement

def self.of_dna(input)
  dna_nucleoid = input.split('')
  dna_hash = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  rna = dna_nucleoid.map do |char|
    raise ArgumentError.new('Invalid') unless dna_hash.include? char
      dna_hash[char]
  end
  return rna.join()
end

def self.of_rna(input)
  rna_nucleoid = input.split('')
  rna_hash = {
    'C' => 'G',
    'G' => 'C',
    'A' => 'T',
    'U' => 'A'
  }
  dna = rna_nucleoid.map do |char|
    raise ArgumentError.new('Invalid') unless rna_hash.include? char
    rna_hash[char]
  end
  return dna.join()
end

puts self.of_rna('UGAACCCGACAUG')
puts self.of_dna('ACGTGGTCTTAA')

end
