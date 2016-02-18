require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end


  # 1. For a given person, return their favourite tv show
  def test_favourite_tv_show
    result = favourite_tv_show(@person5)
    assert_equal("Scrubs", result)
  end

  # 2. For a given person, check if they like a particular food
  def test_check_food_liking_true
    result = check_food_liking(@person3, "stew")
    assert_equal(true, result)
  end

  def test_check_food_liking_false
    result = check_food_liking(@person5, "chocolate")
    assert_equal(false, result)
    end  

  # 3. Allow a new friend to be added to a given person
  # 4. Allow a friend to be removed from a given person
  # 5. Find the total of everyone's money
  # 6. For two given people, allow the first person to loan a given value of money to the other
  # 7. Find the set of everyone's favourite food joined together
  # 8. Find people with no friends

  # INSANE
  # Find the people who have the same favourite tv show





















end