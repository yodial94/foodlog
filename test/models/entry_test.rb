require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
  	entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 20, fats: 10, calories: 300)
  	assert entry.save
  # test "the truth" do
  #   assert true
  end 
end
