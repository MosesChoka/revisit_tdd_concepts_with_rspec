class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/, message: "must be a valid email address" }
end
