def nyc_pigeon_organizer(data)
  organized_hash = {}
  names = []

  data.each do |first_tier, second_tier|
    second_tier.each do |third_tier, third_tier_array|
      third_tier_array.each do |name|
        names << name if !names.include?(name)
      end    
    end 
  end 

  names.each do |pigeon_name|
    organized_hash[pigeon_name] = Hash.new {|k, v| k[v] = []}

    data.each do |first_tier, second_tier|
      organized_hash[pigeon_name][first_tier]
      second_tier.each do |third_tier, third_tier_array|
        third_tier_array.each do |name|
          organized_hash[name][first_tier] << third_tier.to_s if name == pigeon_name
        end 
      end 
    end 
  end 

  return organized_hash
end 
