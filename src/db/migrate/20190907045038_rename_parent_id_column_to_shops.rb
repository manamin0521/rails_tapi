class RenameParentIdColumnToShops < ActiveRecord::Migration[5.2]
  def change
    rename_column :shops, :parent_id, :brand_id
  end
end
