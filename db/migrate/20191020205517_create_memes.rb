class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.references :station, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :post_time
      t.integer :e1_like
      t.integer :e2_like
      t.integer :e3_like
      t.integer :e4_like
      t.string :image_url

      t.timestamps
    end
  end
end
