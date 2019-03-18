require 'csv'

CSV.foreach('/Volumes/Data/Work/insert_db/locality_type.csv', headers: true) do |row|
  Locality_Type.create!(row.to_hash)
end