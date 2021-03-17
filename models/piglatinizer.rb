class PigLatinizer
    def piglatinize(phrase)
        phrase_array = phrase.split(" ")
        end_array = []
        yeah = phrase_array.map do |word|
            word_array = word.split("")
            if word_array[0].scan(/[aeouiAEOUI]/) == []
                consonants = []
                consonants << word[0]
                    if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                        consonants << word[1]
                        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                            consonants << word[2]
                        end
                    end
                end_array << "#{word[consonants.length..-1] + consonants.join + "ay"}"
            else
                end_array << pig_latin = word + "way"
            end
        end
        if phrase_array.length > 1
            end_array.join(" ")
        else
            end_array[0]
        end
    end
end