require 'pry'

  pigeon_data = {
    :color => {
      :purple => ["Theo", "Peter Jr.", "Lucky"],
      :grey => ["Theo", "Peter Jr.", "Ms. K"],
     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
      :brown => ["Queenie", "Alex"]
    },
    :gender => {
      :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
      :female => ["Queenie", "Ms. K"]
    },
    :lives => {
      "Subway" => ["Theo", "Queenie"],
      "Central Park" => ["Alex", "Ms. K", "Lucky"],
      "Library" => ["Peter Jr."],
     "City Hall" => ["Andrew"]
    }
  }

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, hash|
    hash.each do |characteristic, array|
      array.each do |name|
        binding.pry
        if pigeon_list.has_key?(name)
          pigeon_list[name][attributes] << characteristic.to_s
        else
          pigeon_list[name][attributes] = [characteristic.to_s]
        end
      end
    end
  end
end

nyc_pigeon_organizer