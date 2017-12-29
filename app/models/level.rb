class Level < ApplicationRecord
  belongs_to :group
  include TextMethods
end
