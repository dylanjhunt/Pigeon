class User < ActiveRecord::Base
  has_many :squawks
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
