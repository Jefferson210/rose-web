class AddRemarksToGeneticBank < ActiveRecord::Migration
  def change
      add_column :genetic_banks, :remarks, :text
  end
end
