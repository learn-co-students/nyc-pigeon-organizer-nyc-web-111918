def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key1, value1|
    value1.each do |key2, names|
      names.each do |name|
        pigeon_list[name] = {} if pigeon_list[name].nil?
        pigeon_list[name][key1] = [] if pigeon_list[name][key1].nil?
        pigeon_list[name][key1] += [key2.to_s]
      end
    end
  end
  pigeon_list
end
