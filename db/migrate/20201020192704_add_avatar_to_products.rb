class AddAvatarToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :avatar, :json
  end
end
