

class Sports_Team

  attr_accessor :team, :players, :coach, :points

  def initialize(team, players, coach, points)
    @team = team
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(player)
    @players.push(player)
  end

  def check_player_active(player)
     return @players.include? player
  end

  def team_points(goals_against, goals_for)
    if goals_for > goals_against
      @points += 3
    elsif goals_for == goals_against
      @points += 1
    end
  end


end
