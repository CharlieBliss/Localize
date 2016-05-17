class Bar < ActiveRecord::Base

  has_secure_password
  has_and_belongs_to_many :albums

  validates :pin, numericality: true, uniqueness: true, length: {maximum:6}
  validates :about, length: {maximum: 500}

end