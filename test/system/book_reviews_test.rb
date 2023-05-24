require "application_system_test_case"

class BookReviewsTest < ApplicationSystemTestCase
  setup do
    @book_review = book_reviews(:one)
  end

  test "visiting the index" do
    visit book_reviews_url
    assert_selector "h1", text: "Book reviews"
  end

  test "should create book review" do
    visit book_reviews_url
    click_on "New book review"

    fill_in "Book", with: @book_review.book_id
    fill_in "Comment", with: @book_review.comment
    fill_in "Library", with: @book_review.library_id
    fill_in "Member", with: @book_review.member_id
    fill_in "Rating", with: @book_review.rating_id
    fill_in "Reviewdate", with: @book_review.reviewdate
    click_on "Create Book review"

    assert_text "Book review was successfully created"
    click_on "Back"
  end

  test "should update Book review" do
    visit book_review_url(@book_review)
    click_on "Edit this book review", match: :first

    fill_in "Book", with: @book_review.book_id
    fill_in "Comment", with: @book_review.comment
    fill_in "Library", with: @book_review.library_id
    fill_in "Member", with: @book_review.member_id
    fill_in "Rating", with: @book_review.rating_id
    fill_in "Reviewdate", with: @book_review.reviewdate
    click_on "Update Book review"

    assert_text "Book review was successfully updated"
    click_on "Back"
  end

  test "should destroy Book review" do
    visit book_review_url(@book_review)
    click_on "Destroy this book review", match: :first

    assert_text "Book review was successfully destroyed"
  end
end
