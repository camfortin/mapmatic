class Spot < ActiveRecord::Base
  attr_accessible :description, :image, :location, :title, :user, :photo
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :user, :presence => true
end


