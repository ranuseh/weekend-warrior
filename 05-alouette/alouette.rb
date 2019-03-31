class Alouette

  def self.lines_for_verse(verse_num)
    lines = [
      'Et la tête!',
      'Et le bec!',
      'Et les yeux!',
      'Et le cou!',
      'Et les ailes!',
      'Et les pattes!',
      'Et la queue!',
      'Et le dos!'
    ]
    case verse_num
    when 0
      return lines[0..0].reverse
    when 1
      return lines[0..1].reverse
    when 2
      return lines[0..2].reverse
    when 3
      return lines[0..3].reverse
    when 4
      return lines[0..4].reverse
    when 5
      return lines[0..5].reverse
    when 6
      return lines[0..6].reverse
    when 7
      return lines[0..7].reverse
    end
  end

  def self.verse(verse_num)
    verses = lines_for_verse(verse_num)
    formatted_verse = verses.first[3..-1].delete '!'

    song_verses = []
    2.times do
      song_verses << "Je te plumerai #{formatted_verse}."
    end

    verses.each do |line|
      song_verses << line.to_s
      song_verses << line.to_s
    end

    2.times do
      song_verses << 'Alouette!'
    end

    song_verses << 'A-a-a-ah'
    return song_verses.join("\n")

  end

  def self.sing
    song = []
    8.times do |i|
      song << 'Alouette, gentille alouette,'
      song << 'Alouette, je te plumerai.'
      song << ''
      song << verse(i)
      song << ''
    end

    song << 'Alouette, gentille alouette,'
    song << 'Alouette, je te plumerai.'
    entire_song = song.join("\n")
    return entire_song
  end

  puts sing
end
