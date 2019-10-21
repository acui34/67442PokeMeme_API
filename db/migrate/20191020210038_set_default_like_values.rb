class SetDefaultLikeValues < ActiveRecord::Migration[5.1]
  def change
    change_column :memes, :e1_like, :integer, default: 0
    change_column :memes, :e2_like, :integer, default: 0
    change_column :memes, :e3_like, :integer, default: 0
    change_column :memes, :e4_like, :integer, default: 0
  end
end
