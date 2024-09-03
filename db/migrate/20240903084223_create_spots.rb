class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prefecture, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.string :name, null: false
      t.string :body, null: false
      t.string :city, null: false
      t.integer :average_rating
      t.integer :average_quiet_rating
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
