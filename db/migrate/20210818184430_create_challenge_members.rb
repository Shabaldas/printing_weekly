class CreateChallengeMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_members do |t|
      t.belongs_to :user
      t.belongs_to :challenge
      t.string :nick_name

      t.timestamps
    end
  end
end
