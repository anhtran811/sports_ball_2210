require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a(Team)
  end

  it 'can have a roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it 'can start with zero players' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it 'can add players to a roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player_1).to be_a(Player)

    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_2).to be_a(Player)

    team.add_player(player_1)
    team.add_player(player_2)
    
    expect(team.roster).to eq([player_1, player_2])
  end

  it 'can update player count based off roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player_1).to be_a(Player)

    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_2).to be_a(Player)

    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'can be a long term contract' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player_1).to be_a(Player)

    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_2).to be_a(Player)

    player_3 = Player.new("Alan McClennan", 750000, 48)
    expect(player_3).to be_a(Player)

    player_4 = Player.new("Hamilton Porter", 100000, 12)
    expect(player_4).to be_a(Player)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.long_term_players).to eq([player_1, player_3])
  end

    it 'can be short term contract' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      expect(player_1).to be_a(Player)

      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      expect(player_2).to be_a(Player)

      player_3 = Player.new("Alan McClennan", 750000, 48)
      expect(player_3).to be_a(Player)
 
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      expect(player_4).to be_a(Player)
 
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.short_term_players).to eq([player_2, player_4])
  end

  it 'can have a total value' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player_1).to be_a(Player)

    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_2).to be_a(Player)

    player_3 = Player.new("Alan McClennan", 750000, 48)
    expect(player_3).to be_a(Player)

    player_4 = Player.new("Hamilton Porter", 100000, 12)
    expect(player_4).to be_a(Player)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.total_value).to eq(85200000)
  end

  it 'can have details' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    
    expect(team.details).to be_a(Hash)
    expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
  end

  it 'can have an average cost of player' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.average_cost_of_player).to eq("$21,300,000")
  end

  it 'can sort players by last name' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
  end
end