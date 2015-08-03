class String
  define_method(:title_case) do
    combiningConjunctions_array = ['and', 'or', 'for', 'nor', 'but', 'yet', 'so']
    split_sentence_array = self.split
    split_sentence_array.each do |word|


      if (combiningConjunctions_array).include?(word).!()
        word.capitalize!()
      end

    end
    split_sentence_array.join(" ")
  end
end


# word.capitalize!() unless word == "and" || word == "or"
