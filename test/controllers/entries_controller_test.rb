require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:breakfast)
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      x = categories(:one)
      post entries_url, params: { entry: { meal_type: @entry.meal_type, calories: @entry.calories, carbohydrates: @entry.carbohydrates,  proteins: @entry.proteins , fats: @entry.fats, category_id:x.id  } }
    end

    assert_redirected_to entry_url(Entry.last)

  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    x = categories(:one)
    patch entry_url(@entry), params: { entry: { calories: @entry.calories, carbohydrates: @entry.carbohydrates, fats: @entry.fats, meal_type: @entry.meal_type, proteins: @entry.proteins, category_id:x.id  } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
