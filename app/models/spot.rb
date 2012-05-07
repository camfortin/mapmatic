require "geo_location"

class Spot < ActiveRecord::Base

    attr_accessible :description, :image, :location, :title
    belongs_to :user

    has_attached_file :image,
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :storage => :s3,
        :s3_credentials => S3_CREDENTIALS,
        :path => "images/:style/:id/:filename"

    def location
        # return a GeoLocation object instead of the raw string
        GeoLocation.new(self[:location])
    end

    def location=(val)
        self[:location] = val
    end

end
