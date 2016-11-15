class Color < ActiveRecord::Base
    has_many :genetic_bank
    has_many :children
end
