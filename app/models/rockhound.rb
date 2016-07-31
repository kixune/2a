class Rockhound < ApplicationRecord
  has_and_belongs_to_many :bijous
  validates :name, presence: true
  validates :email, presence: true
end
