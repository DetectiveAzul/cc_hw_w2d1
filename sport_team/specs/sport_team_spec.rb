require 'minitest/autorun'
require_relative '../sport_team'

class SportTeamTests < MiniTest::Test
  def setup
    @real_madrid = SportTeam.new("Real Madrid", ["Butragueño", "Michael Jordan", "Raúl Cimas"], "Juan Álvarez")
    @angeles_laker = SportTeam.new("Los Angeles Laker", ["Spaguetti Monster","Clint Eastwood", "John Wayne"], "God")
    @turbo = SportTeam.new("Cohort E20 All-Stars", ["Keith", "Sandi"], "Pawel")
  end

  def test_get_name_of_team()
    team_name = @real_madrid.team_name()
    assert_equal("Real Madrid",team_name)
  end

  def test_get_players_names()
    players_names = @turbo.players()
    assert_equal(["Keith", "Sandi"],players_names)
  end

  def test_get_coach_name()
    coach_name = @angeles_laker.coach()
    assert_equal("God", coach_name)
  end

  def test_set_coach_name()
    @angeles_laker.coach = "The Devil"
    coach_name = @angeles_laker.coach()
    assert_equal("The Devil",coach_name)
  end

  def test_add_new_player()
    @turbo.add_new_player("Sian")
    assert_equal(3, @turbo.players.count)
  end

  def test_find_player_by_name__returns_true()
    result = @real_madrid.find_player_by_name("Butragueño")
    assert_equal(true,result)
  end

  def test_find_player_by_name__returns_false()
    result = @turbo.find_player_by_name("Jaime Lopez")
    assert_equal(false,result)
  end

  def test_update_points()
    @turbo.update_points(:win)
    @turbo.update_points(:win)
    @turbo.update_points(:win)
    @turbo.update_points(:tie)
    @turbo.update_points(:lose)
    total_points = @turbo.points()
    assert_equal(10,total_points)
  end

end
