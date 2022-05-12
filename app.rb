@morse_code = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}

def decode_char(morse_char)
  @morse_code[morse_char].upcase
end

def decode_word(word)
  trs_word = ''
  word.split.each do |char|
    trs_word.concat(decode_char(char))
  end
  trs_word
end

def decode(phrase)
  trs_phrase = ''
  phrase.split('   ').each do |word|
    trs_phrase.concat(decode_word(word)).concat(' ')
  end
  trs_phrase
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
