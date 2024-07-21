#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, number = 2)
    output = ""
    number.times do
        output += " #{string}"
    end
    output.strip
end

def start_of_word(string, number)
    string[0, number]
end

def first_word (string)
    string[0, string.index(" ")]
end

def titleize(string)
    words = string.split(" ")
    little_words = ["a", "and", "as", "at", "but", "by", "down", "for", "from", "if", "in", "into", "like", "near", "nor", "of", "off", "on", "once", "onto", "or", "over", "past", "so", "than", "that", "the", "to", "upon", "when", "with"]
    words.map do |str|
        unless little_words.include?(str.downcase)
            str.capitalize!
        end
    end
    words[0].capitalize!
    words.join(" ")
end