
def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"]
    end
  end
  array = winner.split(" ")
  array[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, info|
    info.each do |contestant|
    if contestant["occupation"] == occupation
      name = contestant["name"]
    end
  end
end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        occupation << contestant["occupation"]
      end
    end
  end
    occupation[0]
  end

def get_average_age_for_season(data, season)
  # code here
  age = []
  data[season].each do |contestant|
    string = contestant["age"]
    age << string.to_i
  end
float = age.inject{ |sum, el| sum + el }.to_f / age.size
float.round
end
