class RemoveFatherMotherOfGeneticBank < ActiveRecord::Migration
  def change
      remove_column :genetic_banks, :father
      remove_column :genetic_banks, :mother
  end
end
