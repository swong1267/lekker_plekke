class Place < ActiveRecord::Base
  validates :name, :description, :location, :rating, presence: true
end