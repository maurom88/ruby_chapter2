# Declare two empty variables to store the players' selections
player_one = ""
player_two = ""

# Declare two empty variables to count wins
player_one_wins = 0
player_two_wins = 0

# Set variable to determine whether the user entered a valid input or not
accepted_value = false

# Set a variable to determint whether to run the game again or not
# Always runs the game at least once
play_again = true

# Print outcome of game
while play_again == true

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

    # Reset control variable for accepted input from user
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

    # Reset control variable for accepted input from user
    accepted_value = false

    case player_one
    when "Rock"
        case player_two
        when "Rock"
            puts "Tie!"
        when "Paper"
            puts "Paper covers rock"
            puts "Player two wins"
            player_two_wins += 1
            play_again = false
        when "Scissors"
            puts "Rock crushes scissors"
            puts "Player one wins"
            player_one_wins += 1
            play_again = false
        end
    when "Paper"
        case player_two
        when "Rock"
            puts "Paper covers rock"
            puts "Player one wins"
            player_one_wins += 1
            play_again = false
        when "Paper"
            puts "Tie!"
        when "Scissors"
            puts "Scissors cut paper"
            puts "Player two wins"
            player_two_wins += 1
            play_again = false
        end
    when "Scissors"
        case player_two
        when "Rock"
            puts "Rock crushes scissors"
            puts "Player two wins"
            player_two_wins += 1
            play_again = false
        when "Paper"
            puts "Scissors cut paper"
            puts "Player one wins"
            player_one_wins += 1
            play_again = false
        when "Scissors"
            puts "Tie!"
        end
    end
end