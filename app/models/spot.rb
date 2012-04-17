class Spot < ActiveRecord::Base
  attr_accessible :description, :image, :location, :title, :user
  
  validates :user, :presence => true
end


