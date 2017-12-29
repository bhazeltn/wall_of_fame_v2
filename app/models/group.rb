class Group < ApplicationRecord
  # Top level groups (Competitive, Pre-Competitive, etc)
  include TextMethods
  has_many :levels
  has_many :disciplines, through: :levels
end
