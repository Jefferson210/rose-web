class AddMotherToCrossing < ActiveRecord::Migration
  def change
      add_column :crossings, :mother, :string
      add_column :crossings, :motherPicture, :string
  end
end
