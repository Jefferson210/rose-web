class RemovePictureOfGeneticBank < ActiveRecord::Migration
  def change
      remove_column :genetic_banks, :picture
  end
end
