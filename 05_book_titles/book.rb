class Book
# write your code here
    @title
    def title
        @title
    end
    def title=(title)
        words = title.split(" ")
        little_words = ["a", "an", "and", "as", "at", "but", "by", "down", "for", "from", "if", "in", "into", "like", "near", "nor", "of", "off", "on", "once", "onto", "or", "over", "past", "so", "than", "that", "the", "to", "upon", "with"]
        words.map do |str|
            unless little_words.include?(str.downcase)
            str.capitalize!
            end
        end
        words[0].capitalize!
        @title = words.join(" ")
    end
end
