class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist

  validates :url, uniqueness: true

end