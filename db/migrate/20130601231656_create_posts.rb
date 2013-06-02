class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :filename
      t.string :title
      t.string :external_url_news
      t.integer :user_id

      t.timestamps
    end
  end
end
