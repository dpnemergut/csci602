class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    options = ["R", "P", "S"]

    # Test that arrays are correct
    noErrors = (player1.count > 1) && (player2.count > 1) && (options.include? player1[1]) && (options.include? player2[1])
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless noErrors

    if(player2[1] == "R" && player1[1] == "S")
      winner = player2
    elsif(player2[1] == "P" && player1[1] == "R")
      winner = player2
    elsif(player2[1] == "S" && player1[1] == "P")
      winner = player2
    else
      winner = player1
    end

    return winner
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end

# Tests
p1 = ["BunA", "R"]
p2 = ["BunB", "P"]
puts RockPaperScissors.winner(p1, p2)
