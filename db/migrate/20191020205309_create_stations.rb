class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.text :introduction

      t.timestamps
    end
  end
end
