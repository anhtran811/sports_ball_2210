class Player
  attr_reader :full_name, :first_name, :last_name, :monthly_cost, :contract_length, :nickname

  def initialize(full_name, monthly_cost, contract_length)
    @full_name = full_name
    @first_name = full_name.split[0]
    @last_name = full_name.split[1]
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = @nickname
  end

  def total_cost
    monthly_cost * contract_length
  end

  def set_nickname!(nickname)
    'Squints'
  end
end