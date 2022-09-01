class RemoveRatingFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :rating, :string
  end
end
