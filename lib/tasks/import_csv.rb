require 'csv'

i = 0
j = 0
n = 0
#filename = '/Volumes/Data/Work/insert_db/CITY.csv'
filename = '/home/pbelevich/Desktop/CITY.csv'

filearray = CSV.foreach(filename, headers: true).map(&:to_h)

tips = filearray.map{ |tiplist| tiplist['TIP'].gsub('.', '') }.uniq
tips.each { |tip| puts "Locality_Type.Create!(short_name: '#{tip}')" }

oblhash = filearray.group_by { |obl| obl['OBL'] }

oblhash.each do |oblnm, oblnm_value|
  i += 1
  puts "Region.Create(name: '#{oblnm}')" + " его id в БД = '#{i}'"

  rayonname = oblnm_value.group_by {|rayon| rayon['RAION']}
  rayonname.each do |raynm, raynm_value|
    j += 1
    puts "District.Create(region_id: '#{i}', name: '#{raynm}')" + "его id в БД = '#{j}'; id  области = '#{i}'"

    raynm_value.each do |nasnm|
      n += 1
      20190309162706_create_table_locality_types.rb
      puts "Locality.Create(district_id: '#{j}', name: '#{nasnm['NAME']}')" + "его id в БД = '#{n}'; id  области = '#{i}; id района = '#{j}' "
    end
  end
end

