class AddRelationshipToGeneticBank < ActiveRecord::Migration
  def change
      add_column :genetic_banks, :relationship, :string
  end
end
