class GeneticBank < ActiveRecord::Base
    belongs_to :color
    has_attached_file :picture, :path => ":rails_root/public/assets/images/geneticBank/:filename",
    :url => "/assets/images/geneticBank/:filename"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
