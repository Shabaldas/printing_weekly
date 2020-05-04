class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      t.integer :role, null: false, default: 0
      t.datetime :remember_created_at
      t.timestamps null: false
    end
  end
end
