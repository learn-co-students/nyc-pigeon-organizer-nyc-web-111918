def nyc_pigeon_organizer(data)
  pigeon_list={}
  data.each do |data, dataarray|
    dataarray.each do |attribute, names|
      names.each do |x|
        if pigeon_list.keys.include?(x)
          if pigeon_list[x].keys.include?(data)
            pigeon_list[x][data]=pigeon_list[x][data]+[attribute.to_s]
          else
            pigeon_list[x][data]=[attribute.to_s]
          end
        else
          pigeon_list[x]={}
          pigeon_list[x][data]=[attribute.to_s]
          puts "Creating name #{x} with attribute #{attribute.to_s} under data #{data}"
        end
      end
    end
  end
  return pigeon_list
end
