class Crossing < ActiveRecord::Base
    belongs_to :genetic_bank
    has_many :children
end
