class SegmentScoreType < ApplicationRecord
  belongs_to :segment_type
  belongs_to :score_type
end
