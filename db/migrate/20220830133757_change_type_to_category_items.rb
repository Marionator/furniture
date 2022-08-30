class ChangeTypeToCategoryItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :type, :string
    add_column :items, :category, :string
    change_column_default :items, :availability, from: nil, to: true
  end
end
