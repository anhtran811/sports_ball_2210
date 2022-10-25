class Team
  attr_reader :roster

  def initialize(team_1, team_2)
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(player)
    @roster << player
  end
end