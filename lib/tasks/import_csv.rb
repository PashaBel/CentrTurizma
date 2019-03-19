require 'csv'

hash = CSV.foreach('/home/pbelevich/Desktop/CITY.csv', headers: true).map(&:to_h)
oblhash = hash.group_by { |obl| obl['OBL'] }
oblhash.each do |oblnm, oblnm_value|
  i = oblnm
  puts i
end

