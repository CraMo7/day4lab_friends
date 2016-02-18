# 1. For a given person, return their favourite tv show
# 2. For a given person, check if they like a particular food
# 3. Allow a new friend to be added to a given person
# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show


def favourite_tv_show( person_var )
  return person_var[:favourites][:tv_show]
end

def check_food_liking( person_var, food_var )
  person_food_array = person_var[:favourites][:things_to_eat]
  bool_var = person_food_array.include?(food_var)
  return bool_var
end

def add_new_friend( person_var, new_friend )
  new_friend << person_var[:friends]
  return 
end