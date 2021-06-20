# Declare two empty variables to store the players' selections
player_one = ""
player_two = ""
accepted_value = false


# Get first input
until accepted_value == true
    print "Player one - Enter your selection: "
    player_one = gets.chomp.capitalize
    case player_one
    when "Rock", "Paper", "Scissors"
        accepted_value = true
    else
        puts "No cheaters! Only rock, paper, scissors allowed"
    end
end

accepted_value = false
# Get second input
until accepted_value == true
    print "Player two - Enter your selection: "
    player_two = gets.chomp.capitalize
    case player_two
    when "Rock", "Paper", "Scissors"
        accepted_value = true
    else
        puts "No cheaters! Only rock, paper, scissors allowed"
    end
end

# Print outcome of game
case player_one
when "Rock"
    case player_two
    when "Rock"
        puts "Tie!"
    when "Paper"
        puts "Paper covers rock"
        puts "Player two wins"
    when "Scissors"
        puts "Rock crushes scissors"
        puts "Player one wins"
    end
when "Paper"
    case player_two
    when "Rock"
        puts "Paper covers rock"
        puts "Player one wins"
    when "Paper"
        puts "Tie!"
    when "Scissors"
        puts "Scissors cut paper"
        puts "Player two wins"
    end
when "Scissors"
    case player_two
    when "Rock"
        puts "Rock crushes scissors"
        puts "Player two wins"
    when "Paper"
        puts "Scissors cut paper"
        puts "Player one wins"
    when "Scissors"
        puts "Tie!"
    end
end