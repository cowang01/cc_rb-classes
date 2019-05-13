# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.


require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b')


class Test_Sports_Team < MiniTest::Test

  def setup
    @team_1 = Sports_Team.new("Blue Wolves", ["Jim", "Billy", "Susan", "Lucy", "Andy"], "Mr T", 0)
  end



  def test_add_new_player
    @team_1.add_new_player("Graham")
    assert_equal(6, @team_1.players.length())
  end

  def test_update_coach_name
    @team_1.coach = "The Face"
    assert_equal("The Face", @team_1.coach)
  end

  def test_check_player_active
    player = @team_1.check_player_active("Billy")
    assert_equal(true, player)
  end

  def test_check_player_active
    player = @team_1.check_player_active("Dave")
    assert_equal(false, player)
  end

  def test_team_points
    points = @team_1.team_points(3, 5)
    assert_equal(3, @team_1.points)
  end

  def test_team_points
    points = @team_1.team_points(5, 3)
    assert_equal(0, @team_1.points)
  end


end
