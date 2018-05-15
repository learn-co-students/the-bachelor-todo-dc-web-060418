require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_title, season_data|
    if season_title == season
      season_data.each do |contestant_data|
        if(contestant_data["status"] == "Winner")
          return contestant_data["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_title, season_data|
    season_data.each do |contestant_data|
      if(contestant_data["occupation"]==occupation)
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter_hometown = 0;
  data.each do |season_title, season_data|
    season_data.each do |contestant_data|
      if(contestant_data["hometown"]==hometown)
        counter_hometown+=1
      end
    end
  end
  return counter_hometown
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_title, season_data|
    season_data.each do |contestant_data|
      if(contestant_data["hometown"]==hometown)
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  num_contestants = 0
  data.each do |season_title, season_data|
    if season_title == season
      num_contestants = season_data.size
      season_data.each do |contestant_data|
          age_sum+=contestant_data["age"].to_f
        end
      end
    end
  return (age_sum/num_contestants).round
end
