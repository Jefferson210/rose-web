class GeneticBank < ActiveRecord::Base
    belongs_to :color
    has_many :crossings
    has_attached_file :picture, :path => ":rails_root/public/assets/images/geneticBank/:filename",
    :url => "/assets/images/geneticBank/:filename"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
    
#    VALIDATIONS
    validates :codeBreeder , presence:{ message:"Obligatorio"}, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
end
