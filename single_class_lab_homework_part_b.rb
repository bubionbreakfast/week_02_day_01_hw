class Team

  attr_reader(:team_name, :players, :coach, :points)
  attr_writer(:coach)

  def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = 0
  end

  def add_palyer(player)
    @players.push(player)
  end

  # def update_coach(new_coach)
  #   @coach = new_coach
  # end

  def update_points(result)
    @points += 1 if result == 'win'
    @points -= 1 if result == 'loss'
  end


end
