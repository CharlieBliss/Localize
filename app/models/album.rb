class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :artist
  has_and_belongs_to_many :bars

  validates :url, uniqueness: true, presence: true

end