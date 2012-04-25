class Spot < ActiveRecord::Base
    attr_accessible :description, :image, :location, :title, :user, :photo
    has_attached_file :image,
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :storage => :s3,
        :s3_credentials => "#{Rails.root}/config/s3.yml",
        :path => "images/:style/:id/:filename"
    validates :user, :presence => true
end
