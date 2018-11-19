def nyc_pigeon_organizer(data)
  full = {}

  data.each do |k1, v1|
    v1.each do |k2, v2|
      v2.each do |name|
        full[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = full.keys
  data[:color].each do |bc, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          full[item][:color] << bc.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          full[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          full[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return full 
end 