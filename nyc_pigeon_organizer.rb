require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |category, attributes| #color, gender, lives
    attributes.each do |attribute, data_array| #purple white, male female, "Subway" "Library"
      data_array.each do |name|
        if pigeon_list.has_key?(name) == false
          pigeon_list[name] = {:color => [], :gender => [], :lives => []}
          pigeon_list[name][category] << attribute.to_s
#          binding.pry
        else
          pigeon_list[name][category] << attribute.to_s
        end
      end
    end
  end
  binding.pry
  pigeon_list
end
