class RemoveGeneticBankIdOfCrossing < ActiveRecord::Migration
  def change
      remove_column :crossings, :geneticBank_id
  end
end
