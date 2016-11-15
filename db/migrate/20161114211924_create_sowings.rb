class CreateSowings < ActiveRecord::Migration
    def change
        create_table :sowings do |t|
            t.string :origin
            t.integer :numSeed
            t.decimal :weight, precision: 5, scale: 2
            t.integer :week
            t.boolean :hydratation
            t.date :calendar

            t.timestamps null: false
        end
    end
end
