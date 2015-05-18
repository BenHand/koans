movies = {"star_trek" => 4}
puts "What would you like to do?"
puts "ADD a new movie"
puts "UPDATE existing movie"
puts "DISPLAY current saved movies/ratings"
puts "DELETE an existing movie/rating"
choice = gets.chomp.downcase

case choice
when "add"
    puts "What movie would you like to add?"
    title = gets.chomp
if movies[title.to_sym] = nil
    puts "What rating between 0-4 would you give to this               movie?"
    rating = gets.chomp
    movies.merge!(title.to_sym => rating.to_i)
    puts "Your movie and rating has been saved!"
else puts "This movie is already listed here."
end
when "update"
    puts "What movie would you like to update?"
    title = gets.chomp
if movies[title.to_sym] = nil
    puts "It appears there is nothing to update as this movie has yet to be added."
else puts "Please give me the new rating (0-4) you wish to assign to #{title}."
    rating = gets.chomp
    movies.merge!(title.to_sym => rating.to_i)
end
when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
end
when 'delete'
    puts "Which movie would you like to remove?"
    title = gets.chomp
if movies[title.to_sym].nil?
    puts "Movie not found"
else
    movies.delete(title.to_sym)
    puts "#[title] successfully removed"
end
