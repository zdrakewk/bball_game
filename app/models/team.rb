class Team < ApplicationRecord
  has_many :home_games, class_name: 'Game',
  foreign_key: 'home_team_id'
  has_many :away_games, class_name: 'Game',
  foreign_key: 'away_team_id'
end

#create test teams
Team.create(name: 'team1')
Team.create(name: 'team2')

# # create a game 
g1 = Game.new
# # associated teams
g1.away_team = Team.first #makes team 1 be the away team
g1.home_team = Team.last
g1.save
# # swap associated teams
g2 = Game.new
g2.away_team = Team.last
g2.home_team = Team.first #makes team 1 be the home team
g2.save
Team.first.home_games # returns g2
Team.first.away_games # returns g1