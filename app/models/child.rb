class Child < ActiveRecord::Base
  belongs_to :crossing
  belongs_to :color
    has_attached_file :image, :path => ":rails_root/public/assets/images/children/:filename",
    :url => "/assets/images/children/:filename"

#    VALIDATIONS
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    
    validates :crossing_id, presence: {message:"Obligatorio"}, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
    
end
