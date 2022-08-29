class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.boolean :status
      t.string :color
      t.text :description
      t.integer :price
      t.integer :width
      t.integer :height
      t.integer :depth
      t.integer :weight
      t.string :shipping
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
