require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
  	x = categories(:one)
  	entry = Entry.new(meal_type: "Breakfast", calories: 300, carbohydrates: 35, proteins: 20, fats: 10, category_id:x.id )
  	assert entry.save

  # test "the truth" do
  #   assert true
  end 
end
