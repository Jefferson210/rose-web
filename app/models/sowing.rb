class Sowing < ActiveRecord::Base
#    VALIDATIONS
    validates :origin , presence:{message:"Obligatorio"}
    validates :weight , numericality: { only_integer: false }

end
