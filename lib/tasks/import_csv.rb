require 'csv'

filearray = CSV.foreach('/home/pbelevich/Desktop/CITY.csv', headers: true).map(&:to_h)
oblhash = filearray.group_by { |obl| obl['OBL'] }
oblhash.each do |oblnm, oblnm_value|
  i = oblnm
  puts i
  rayonname = oblnm_value.group_by {|rayon| rayon['RAION']}
  rayonname.each do |raynm, raynm_value|
    j = raynm
    puts j
  end
end

