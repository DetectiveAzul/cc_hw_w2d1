class SportTeam
  attr_reader :team_name, :players, :points
  attr_writer
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player_by_name(player_name)
    return true if @players.include?(player_name)
    return false
  end

  def update_points(match_result)
    case match_result
    when :win
      @points += 3
    when :tie
      @points += 1
    else
      @points += 0
    end
  end
end
