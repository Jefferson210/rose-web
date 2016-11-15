class AddFatherToCrossing < ActiveRecord::Migration
  def change
      add_column :crossings, :father, :string
      add_column :crossings, :fatherPicture, :string
  end
end
