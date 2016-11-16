class Color < ActiveRecord::Base
    has_many :genetic_banks
    has_many :children
end
