require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |details|
        details["status"] == "Winner"
        return details["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestant|
    contestant.each do |detail|
      if detail["occupation"] == occupation
        return detail["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0 
  data.each do |season_num, contestant|
    contestant.each do |detail|
      if detail["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season_num, contestant|
    contestant.each do |detail|
      if detail["hometown"] == hometown
        return detail["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = []
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |details|
        average_age << details["age"].to_i
      end
    end
  end
  average_age.inject{ |sum, el| sum + el } / average_age.size.round(0)
end


def get_average_age_for_season(data, season)
  average_age = nil
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |details|
       # if details == "age"
        average_age += details["age"].to_i
       #end
      end
    end
  end
  average_age.inject{ |sum, el| sum + el }.round / average_age.size
end
