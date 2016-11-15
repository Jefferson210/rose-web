class RemoveImageOfChild < ActiveRecord::Migration
  def change
      remove_column :children, :image
  end
end
