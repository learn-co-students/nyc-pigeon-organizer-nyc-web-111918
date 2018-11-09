require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  list = Hash.new
  data.each do |data_type, data_name|
    data_name.each do |selection, name|
      name.each do |el|
        unless list.include?(el)
          list[el] = Hash.new 
        end 
        
        if  list[el][data_type] == nil  
          list[el][data_type] = [selection.to_s]
        else
           list[el][data_type] << selection.to_s 
        end 
      end 
    end 
  end
  list 
end