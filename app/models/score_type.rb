class ScoreType < ApplicationRecord
  include TextMethods
  has_many :segment_score_type
  has_many :segment_type, through: :segment_score_type
end
