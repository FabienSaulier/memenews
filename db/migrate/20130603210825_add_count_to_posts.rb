class AddCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :count_up, :integer, :default => 0
    add_column :posts, :count_down, :integer, :default => 0
  end
end
