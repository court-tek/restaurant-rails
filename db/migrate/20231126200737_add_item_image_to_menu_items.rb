class AddItemImageToMenuItems < ActiveRecord::Migration[7.1]
  def change
    add_column :menu_items, :item_image, :string
  end
end
