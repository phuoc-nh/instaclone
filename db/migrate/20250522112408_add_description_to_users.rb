class AddDescriptionToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :bio, :string
    add_column :users, :username, :string

  end
end
