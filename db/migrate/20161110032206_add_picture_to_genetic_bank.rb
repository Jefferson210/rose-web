class AddPictureToGeneticBank < ActiveRecord::Migration
  def change
      add_attachment :genetic_banks, :picture
  end
end
