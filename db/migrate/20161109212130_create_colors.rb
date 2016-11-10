class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :colorName
      t.string :code

      t.timestamps
    end
  end
end
