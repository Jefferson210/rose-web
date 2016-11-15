class AddGeneticBankIdToCrossing < ActiveRecord::Migration
  def change
    add_reference :crossings, :geneticBank, index: true
    add_foreign_key :crossings, :geneticBanks
  end
end
