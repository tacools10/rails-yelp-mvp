class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :restaurant, foreign_key: true

      t.timestamps null: false
    end
  end
end
