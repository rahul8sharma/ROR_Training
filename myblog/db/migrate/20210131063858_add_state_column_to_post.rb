class AddStateColumnToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :state, :integer
  end
end
