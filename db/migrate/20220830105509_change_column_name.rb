class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :status, :availability
  end
end
