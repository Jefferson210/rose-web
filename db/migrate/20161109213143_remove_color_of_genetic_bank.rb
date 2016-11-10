class RemoveColorOfGeneticBank < ActiveRecord::Migration
  def change
      remove_column :genetic_banks, :color
  end
end
