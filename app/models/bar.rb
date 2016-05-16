class Bar < ActiveRecord::Base

  has_secure_password

  validates :email, uniqueness: true
  validates :pin, uniqueness: true, length: {maximum:6}
  validates :about, length: {maximum: 500}

end