class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.belongs_to :away_team, null: false #, foreign_key: true
      t.belongs_to :home_team, null: false #, foreign_key: true

      t.timestamps
    end
  end
  # rails g model Game away_team_id:belongs_to home_team_id:belongs_to
end
