class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name,         null: false
      t.string :genre,        null: false
      t.string :description,  null: false
      t.string :rating,      null: false
      t.string :platform,     null: false
      t.string :release_date, null: false

      t.timestamps
    end
  end
end
