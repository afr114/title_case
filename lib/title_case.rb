class String
  define_method(:title_case) do
    split_sentence_array = self.split
    split_sentence_array.each do |x|
      x.capitalize!()
    end
    split_sentence_array.join(" ")
  end
end
