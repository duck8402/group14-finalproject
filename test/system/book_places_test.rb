require "application_system_test_case"

class BookPlacesTest < ApplicationSystemTestCase
  setup do
    @book_place = book_places(:one)
  end

  test "visiting the index" do
    visit book_places_url
    assert_selector "h1", text: "Book places"
  end

  test "should create book place" do
    visit book_places_url
    click_on "New book place"

    fill_in "Book", with: @book_place.book_id
    fill_in "Floor", with: @book_place.floor_id
    fill_in "Library", with: @book_place.library_id
    fill_in "Row", with: @book_place.row
    fill_in "Shelve", with: @book_place.shelve
    click_on "Create Book place"

    assert_text "Book place was successfully created"
    click_on "Back"
  end

  test "should update Book place" do
    visit book_place_url(@book_place)
    click_on "Edit this book place", match: :first

    fill_in "Book", with: @book_place.book_id
    fill_in "Floor", with: @book_place.floor_id
    fill_in "Library", with: @book_place.library_id
    fill_in "Row", with: @book_place.row
    fill_in "Shelve", with: @book_place.shelve
    click_on "Update Book place"

    assert_text "Book place was successfully updated"
    click_on "Back"
  end

  test "should destroy Book place" do
    visit book_place_url(@book_place)
    click_on "Destroy this book place", match: :first

    assert_text "Book place was successfully destroyed"
  end
end
