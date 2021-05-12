class ChangeTableRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :adress, :address
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    change_column :restaurants, :phone_number, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
