class Performer < ApplicationRecord
  has_secure_password
  validates :email, {presence: true, uniqueness: true}
  validates :leader_name, {presence: true, uniqueness: true}
end
