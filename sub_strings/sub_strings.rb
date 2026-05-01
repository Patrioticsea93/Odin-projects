def substrings(word, dictionary)
  matches = {}
  normalized_word = word.downcase

  dictionary.each do |substring|
    normalized_substring = substring.downcase
    next if normalized_substring.empty?

    count = normalized_word.scan(Regexp.new(Regexp.escape(normalized_substring))).length
    matches[normalized_substring] = count if count.positive?
  end

  matches
end
