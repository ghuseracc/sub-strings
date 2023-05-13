def substrings(substring, dictionary)
    string_count = Hash.new
    dictionary.each do |word| 
        count = 0
        substring.each do |string|
            if string.include?(word) == true
                count += 1
                string_count[word] = count 
            end
        end
    end
    puts string_count
end

puts "Please enter the substring you want to search for :"
user_substring = gets.chomp.downcase.split(/\W+/)

puts "Please enter the dictionary you want to search seperated by spaces :"
input = gets.chomp.downcase.split(/\W+/)

substrings(user_substring, input)