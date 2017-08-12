class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.text :text

      t.timestamps
    end
  end
end
