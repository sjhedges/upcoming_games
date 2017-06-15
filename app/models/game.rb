class Game < ApplicationRecord
  validates_presence_of :name, :genre, :description, :rating, :platform, :release_date
  validates_uniqueness_of :name
end
