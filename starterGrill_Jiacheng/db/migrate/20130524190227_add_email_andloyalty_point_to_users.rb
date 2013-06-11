class AddEmailAndloyaltyPointToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :loyaltyPoint, :integer
  end
end
