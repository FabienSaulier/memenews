class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.string :nickname
      t.string :avatar

      t.timestamps
    end
  end
end
