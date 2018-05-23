require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_array|
    contestant_array.each do |title, info|
      if contestant_array["status"] == "Winner"
        #binding.pry
        return info.split(" ")[0].to_s
      end
    end
  end
end

def get_contestant_name(data, occupatione)
  # code here
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_data|
      #binding.pry
      if contestant_data["occupation"] == occupatione
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  town_count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_data|
      #binding.pry
      if contestant_data["hometown"] == hometown
        town_count += 1
      end
    end
  end
  town_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_data|
      #binding.pry
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  contestants = 0
  data[season].each do |contestant_array|
    contestant_array.each do |title, info|
      age_sum += contestant_array["age"].to_i
      contestants += 1
    end
  end
  average = age_sum.to_f / contestants
  average.round
end
