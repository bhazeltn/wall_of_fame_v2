class Group < ApplicationRecord
  include TextMethods
  has_many :levels
  has_many :disciplines, through: :levels
end
