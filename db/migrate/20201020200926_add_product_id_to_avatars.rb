class AddProductIdToAvatars < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :product_id, :integer
  end
end
