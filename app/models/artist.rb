class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs

  validates :url, uniqueness: true, presence: true

end