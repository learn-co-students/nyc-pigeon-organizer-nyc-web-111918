require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |data_type, characteristics|
    characteristics.each do |info, pigeons|
      pigeons.each do |pigeon|
        new_hash[pigeon] ||= {}
        new_hash[pigeon][data_type] ||= []
        new_hash[pigeon][data_type] << info.to_s
      end
    end
  end
  new_hash
end
