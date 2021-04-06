class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {in: 6..24}
  validates :password, presence: true, length: {in: 8..24} 
  validates :email, presence: true, uniqueness: true

  has_many :posts
end
