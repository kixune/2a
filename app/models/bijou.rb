class Bijou < ApplicationRecord
  has_and_belongs_to_many :rockhounds
  validates :name, presence: true
  validates :description, presence: true,
                          length: { maximum: 150 }
end
