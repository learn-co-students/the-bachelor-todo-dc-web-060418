require "pry"
def get_first_name_of_season_winner(data, season)
  contest_winner = ""
  data[season].each do | attributes, values|

      attributes.each do |contest_attribute, contest_value |

        if contest_value == "Winner"

          contest_winner << attributes.values_at("name").join().split[0]
        end
      end
  end
  contest_winner
end

def get_contestant_name(data, occupation)
  working_person = ""
  data.each do | season, attributes|
      attributes.each do |contest_attribute, contest_value |
        if contest_attribute.values_at("occupation").join() == occupation
          working_person << contest_attribute.values_at("name").join()
        end
      end
  end
  working_person
end

def count_contestants_by_hometown(data, hometown)
  hometown_locals = 0
  data.each do | season, attributes|
      attributes.each do |contest_attribute, contest_value |
        if contest_attribute.values_at("hometown").join() == hometown
          hometown_locals += 1
        end
      end
  end
  hometown_locals
end

def get_occupation(data, hometown)
  data.each do | season, attributes|
      attributes.each do |contest_attribute, contest_value |
        if contest_attribute.values_at("hometown").join() == hometown
          return contest_attribute.values_at("occupation").join()
        end
      end
  end
end

def get_average_age_for_season(data, season)
  number_of_contestants = 0
  total_age_of_contestants = 0
  data[season].each do |contest_attribute, contest_value |
        total_age_of_contestants += contest_attribute.values_at("age").join().to_i
        number_of_contestants += 1

  end
  average_age_float = total_age_of_contestants.to_f / number_of_contestants.to_f

  average_age_float.round(0)
end
