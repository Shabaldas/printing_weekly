class CreateInstaphoto < ActiveRecord::Migration[6.0]
  def change
    create_table :instaphotos do |t|
      t.string :url
    end
  end
end
