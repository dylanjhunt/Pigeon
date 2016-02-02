class Squawk < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { maximum: 140 }
end
