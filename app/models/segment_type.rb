class SegmentType < ApplicationRecord
  #Segment Types
  include TextMethods
  has_many :segment_score_type
  has_many :score_type, through: :segment_score_type
end
