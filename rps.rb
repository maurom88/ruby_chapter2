# Declare two empty variables to store the players' selections
player_one = ""
player_two = ""


# Get first input
print "Player one - Enter your selection: "
player_one = gets.chomp

# Get second input
print "Player two - Enter your selection: "
player_two = gets.chomp

# Print outcome of game
case player_one
when "Rock"
    case player_two
    when "Rock"
        puts "Tie!"
    when "Paper"
        puts "Paper covers rock"
    when "Scissors"
        puts "Rock crushes scissors"
    end
when "Paper"
    case player_two
    when "Rock"
        puts "Paper covers rock"
    when "Paper"
        puts "Tie!"
    when "Scissors"
        puts "Scissors cut paper"
    end
when "Scissors"
    case player_two
    when "Rock"
        puts "Rock crushes scissors"
    when "Paper"
        puts "Scissors cut paper"
    when "Scissors"
        puts "Tie!"
    end
end