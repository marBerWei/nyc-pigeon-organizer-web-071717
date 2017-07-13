def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, hash|
    hash.each do |specific, array|
      array.each do |pigeon|
        if !pigeon_list.include?(pigeon)
          pigeon_list[pigeon] = {}
        end
        if category != :color
          pigeon_list[pigeon][category] = [specific.to_s]
        elsif !pigeon_list[pigeon][category]
          pigeon_list[pigeon][category] = [specific.to_s]
        else
          pigeon_list[pigeon][category] << specific.to_s
        end
      end
    end
  end
  pigeon_list
end
