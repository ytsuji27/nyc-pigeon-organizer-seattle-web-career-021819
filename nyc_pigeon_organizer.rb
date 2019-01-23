require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, hash|
    hash.each do |characteristic, array|
      array.each do |name|
        if pigeon_list.has_key?(name)
          pigeon_list[name][attributes] << characteristic.to_s
        else
          pigeon_list[name][attributes] = [characteristic.to_s]
        end
      end
    end
  end
end
