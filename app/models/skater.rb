class Skater < ApplicationRecord
  def name
    self.first_name + ' ' + self.last_name
  end
end
