class Place < ActiveRecord::Base
  has_many :comments
  validates :name, :description, :location, :rating, presence: true
end