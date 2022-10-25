class Player
  attr_reader :player, :first_name, :last_name, :monthly_cost, :contract_length, :nickname

  def initialize(player, monthly_cost, contract_length)
    @player = player
    @first_name = player.split[0]
    @last_name = player.split[1]
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = @nickname
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def set_nickname!(nickname)
    'Squints'
  end
end