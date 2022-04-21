class RemoveEmailFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Email, :string
  end
end
