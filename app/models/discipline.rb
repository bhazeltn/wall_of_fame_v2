class Discipline < ApplicationRecord
  belongs_to :level
  include TextMethods
  
end
