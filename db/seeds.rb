require 'csv'

#Groups
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'groups.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Group.new
  t.name = row['grp']
  t.save!
end

#Levels
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'levels.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Level.new
  t.group_id = row['grp']
  t.name = row['lvl']
  t.save!
end

#Disciplines
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'disciplines.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Discipline.new
  t.level_id = row['lvl']
  t.name = row['disc']
  t.save!
end

#SegmentTypes
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'segment_type.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = SegmentType.new
  t.name = row['segmenttype']
  t.save!
end

#ScoreTypes
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'score_type.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = ScoreType.new
  t.name = row['scoretype']
  t.save!
end

#SegmentScoreTypes
csv = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'segment_score_type.csv')), :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = SegmentScoreType.new
  t.segment_type_id = row['segmenttype']
  t.score_type_id = row['scoretype']
  t.save!
end
