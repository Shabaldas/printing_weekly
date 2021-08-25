class CreateChallengeWinners < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_winners do |t|
      t.belongs_to :challenge
      t.belongs_to :challenge_member
      t.integer :place
      t.datetime :winning_date
      
      t.timestamps
    end
  end
end
