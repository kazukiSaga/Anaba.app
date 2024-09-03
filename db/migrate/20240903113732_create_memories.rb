class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.references :comment, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
