class Crossing < ActiveRecord::Base
    belongs_to :genetic_bank
    has_many :children
    
#    VALIDATIONS
    validates :codeCrossing, presence:{message:"Obligatorio"}, uniqueness: {case_sensitive: false, message: "Ya esta registrado"}
    
    validates :father, presence:{message:"Obligatorio"}
    validates :mother, presence:{message:"Obligatorio"}
        
end
