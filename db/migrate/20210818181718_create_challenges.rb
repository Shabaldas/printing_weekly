class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.string :link
      t.float :money_prize

      t.timestamps
    end
  end
end
