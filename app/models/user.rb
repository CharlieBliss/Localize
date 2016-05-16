class User < ActiveRecord::Base

  validates :email, uniqueness: true
  validates :pin, uniqueness: true
  validates :about, length: {maximum: 500}

end