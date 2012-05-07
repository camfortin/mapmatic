class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :name, :email, :password, :remember_me
  has_many :spots
  # attr_accessible :title, :body
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  def to_param
      username
  end
end