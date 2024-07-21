#write your code here
def translate(string)
    vowels = ["a", "e", "i", "o", "u"]
    words = string.split(" ")
    words = words.map do |word|#for each word in string
        if vowels.include?(word[0])#first letter is vowel
            word << "ay"
        elsif word.start_with?("qu")
            word[2, word.length] << word[0, 2] << "ay"
        elsif vowels.include?(word[1])#second letter is vowel
            word[1, word.length] << word[0] << "ay"
        elsif word.slice(1, word.length).start_with?("qu")
            word[3, word.length] << word[0, 3] << "ay"
        elsif vowels.include?(word[2])#third letter is vowel
            word[2, word.length] << word[0, 2] << "ay"
        elsif vowels.include?(word[3])#fourth letter  not vowel
            word[3, word.length] << word[0, 3] << "ay"
        end#vowel check
    end#for each word in string
    words.join (" ")
end#translate

#find index of first vowel (n)
#slice 0-n
#slice n-length
#n-length << 0-n << "ay"