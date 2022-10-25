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

  def long_term_players
    long_term_contract = []
    @roster.each do |player|
      if player.contract_length > 24
        long_term_contract << player
      end
    end
    long_term_contract
  end

  def short_term_players
    short_term_contract = []
    @roster.each do |player|
      if player.contract_length <= 24
        short_term_contract << player
      end
    end
    short_term_contract
  end

  def total_value
    total = []
    @roster.each do |player|
      total << player.total_cost
    end
    total.sum
  end

  def details
    team = {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end

  def average_cost_of_player
    total_value / @roster.count
  end

  def players_by_last_name
    last_names = " "
    @roster.each do |name|
      last_names << name.last_name
    end
    last_names
  end
end