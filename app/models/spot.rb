class Spot < ActiveRecord::Base
  attr_accessible :description, :image, :location, :title, :user
end
