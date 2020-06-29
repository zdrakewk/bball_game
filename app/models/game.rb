class Game < ApplicationRecord
  belongs_to :away_team, class_name: 'Team'
  belongs_to :home_team, class_name: 'Team'
end

# good explanation article however rails 5 doesn't need 'shoulda' gem
# article link: https://emcorrales.com/blog/rails-setup-multiple-associations-same-model
