# 1. For a given person, return their favourite tv show

def favourite_tv_show( person_var )
  return person_var[:favourites][:tv_show]
end

# 2. For a given person, check if they like a particular food

def check_food_liking( person_var, food_var )
  person_food_array = person_var[:favourites][:things_to_eat]
  bool_var = person_food_array.include?(food_var)
  return bool_var
end

# 3. Allow a new friend to be added to a given person

def add_new_friend( person_var, new_friend )
  person_var[:friends] << new_friend
  return 
end

# 4. Allow a friend to be removed from a given person

def remove_friend( person_var, friend_to_remove )
  index_pos_friend_to_remove = person_var[:friends].index(friend_to_remove)
  person_var[:friends].remove_at(index_pos_friend_to_remove)
end

# 5. Find the total of everyone's money

def total_of_all_money( all_people_array )
  total_money = Fixnum.new 
  total_money = 0
    for x in all_people_array
      total_money x[:monies] + total_money
    end
  return total_money
end

  # 6. For two given people, allow the first person to loan a given value of money to the other
  
def two_person_loan( person_loanshark, person_loanee, loan_value )
  if person_loanshark[:monies] < loan_value
    return "Person doesn't have enough to lend."
  else person_loanshark[:monies] - loan_value
    person_loanee[:monies] + loan_value
    return "#{person_loanshark} has lent #{person_loanee} #{loan_value} monies"  
end

# 7. Find the set of everyone's favourite food joined together

def create_fav_food_array( all_people_array )
  for x in all_people_array
    all_foods_array << x[:favourites][:things_to_eat]
  end
end

# 8. Find people with no friends

def no_friend_finder( all_people_array )
  array_of_people_with_no_friends = Array.new
    for x in all_people_array
      if x[:friends][0] == nil
        then array_of_people_with_no_friends << x
      end
  return array_of_people_with_no_friends
end




