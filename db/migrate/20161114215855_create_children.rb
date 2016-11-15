class CreateChildren < ActiveRecord::Migration
    def change
        create_table :children do |t|
            t.references :crossing, index: true
            t.integer :numIndividuals
            t.references :color, index: true
            t.decimal :headSize, precision: 5, scale:2
            t.integer :numFlowering
            t.integer :numPetals
            t.string :form
            t.string :image

            t.timestamps null: false
        end
        add_foreign_key :children, :crossings
        add_foreign_key :children, :colors
    end
end
