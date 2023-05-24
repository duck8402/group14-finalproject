require "test_helper"

class BookPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_place = book_places(:one)
  end

  test "should get index" do
    get book_places_url
    assert_response :success
  end

  test "should get new" do
    get new_book_place_url
    assert_response :success
  end

  test "should create book_place" do
    assert_difference("BookPlace.count") do
      post book_places_url, params: { book_place: { book_id: @book_place.book_id, floor_id: @book_place.floor_id, library_id: @book_place.library_id, row: @book_place.row, shelve: @book_place.shelve } }
    end

    assert_redirected_to book_place_url(BookPlace.last)
  end

  test "should show book_place" do
    get book_place_url(@book_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_place_url(@book_place)
    assert_response :success
  end

  test "should update book_place" do
    patch book_place_url(@book_place), params: { book_place: { book_id: @book_place.book_id, floor_id: @book_place.floor_id, library_id: @book_place.library_id, row: @book_place.row, shelve: @book_place.shelve } }
    assert_redirected_to book_place_url(@book_place)
  end

  test "should destroy book_place" do
    assert_difference("BookPlace.count", -1) do
      delete book_place_url(@book_place)
    end

    assert_redirected_to book_places_url
  end
end
