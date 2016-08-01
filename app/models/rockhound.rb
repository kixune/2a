class Rockhound < ApplicationRecord
  has_and_belongs_to_many :bijous
  before_save { email.downcase! }
  before_save { name.capitalize! }

  VALID_NAME_REGEX = /\A[a-zA-z]{2,50}\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A[a-zA-z0-9]{6,15}\z/

  validates :name,    presence: true,
                      format: { with: VALID_NAME_REGEX }
  validates :email,   presence: true,
                      uniqueness: { case_sensitive: false },
                      length: { maximum: 100 },
                      format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, presence: true,
                      format: { with: VALID_PASSWORD_REGEX }

end
