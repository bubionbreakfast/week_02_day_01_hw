require('minitest/autorun')
require('minitest/pride')
require_relative('../single_class_lab_homework_part_b')
require('pry')

class TestTeam < Minitest::Test

  def setup

    @team_name = "fanatics"

    @players = [
      'john', 'dave', 'mark', 'bob'

    ]

    @coach = "Billy Zane"

  end

  def test_team_name()
    team = Team.new(@team_name, @players, @coach)
    assert_equal("fanatics", team.team_name())
  end

  def test_update_coach_name()
    team = Team.new(@team_name, @players, @coach)
    # team.update_coach("Jake Hall")
    team.coach = "Jake Hall"
    # binding.pry
    assert_equal("Jake Hall", team.coach)
  end

  def test_add_new_player()
    team = Team.new(@team_name, @players, @coach)
    team.add_palyer("jojo")
    assert_equal(true, team.players.include?("jojo"))
  end

  def test_points_equals_0()
    team = Team.new(@team_name, @players, @coach)
    assert_equal(0, team.points())
  end

  def test_update_points__win()
    team = Team.new(@team_name, @players, @coach)
    team.update_points('win')
    assert_equal(1, team.points())
  end

  def test_update_points__loss()
    team = Team.new(@team_name, @players, @coach)
    team.update_points('loss')
    assert_equal(-1, team.points())
  end


end
