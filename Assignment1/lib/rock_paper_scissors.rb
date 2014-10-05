class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    options = ["R", "P", "S"]

    # Test that arrays are correct
    noErrors = (player1.count > 1) && (player2.count > 1) && (options.include? player1[1]) && (options.include? player2[1])
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless noErrors

    if(player2[1] == "R" && player1[1] == "S")
      champ = player2
    elsif(player2[1] == "P" && player1[1] == "R")
      champ = player2
    elsif(player2[1] == "S" && player1[1] == "P")
      champ = player2
    else
      champ = player1
    end

    return champ
  end

  def self.tournament_winner(tournament)
    # Check if we're at the lowest level
    if(tournament[0][0].is_a? String)
      return winner(tournament[0], tournament[1])
    end

    # Recursively call this until we get to the lowest level
    return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
  end

end

# Tests
p1 = ["BunA", "R"]
p2 = ["BunB", "P"]
puts RockPaperScissors.winner(p1, p2)

tourney = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
puts RockPaperScissors.tournament_winner(tourney)
