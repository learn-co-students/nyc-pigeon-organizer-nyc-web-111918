# sort of similar to bachelor lab

def nyc_pigeon_organizer(data)
  # write your code here!
  # creat an empty hash 'pigeon_list'
  pigeon_list = {}
  # within the data, iterate over each attribute, looking at each choice
  data.each do |attribute, choices|
    # iterate over each choice within each attribute, looking at each name
    choices.each do |choice, names|
      # iterate over each name within each choice
      names.each do |name|
        # add the name to pigeon_list as hash
        pigeon_list[name] ||= {} #pigeon_list[name] OR pigeon_list[name] = {} if it's falsey
        # add the attribute hash to the name hash with an array value
        pigeon_list[name][attribute] ||= [] #pigeon_list[name][attribute] OR pigeon_list[name][attribute] = [] if it's falsey
        # push the choice (of color, gender, lives) as a str value onto the corresponding attribute of the corresponding pigeon
        pigeon_list[name][attribute].push(choice.to_s)
      end
    end
  end
  pigeon_list #return pigeon_list
end
