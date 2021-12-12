require "application_system_test_case"

class HomeReviewsTest < ApplicationSystemTestCase
  setup do
    @home_review = home_reviews(:one)
  end

  test "visiting the index" do
    visit home_reviews_url
    assert_selector "h1", text: "Home Reviews"
  end

  test "creating a Home review" do
    visit home_reviews_url
    click_on "New Home Review"

    fill_in "Home", with: @home_review.home_id
    fill_in "Review", with: @home_review.review
    fill_in "User", with: @home_review.user_id
    click_on "Create Home review"

    assert_text "Home review was successfully created"
    click_on "Back"
  end

  test "updating a Home review" do
    visit home_reviews_url
    click_on "Edit", match: :first

    fill_in "Home", with: @home_review.home_id
    fill_in "Review", with: @home_review.review
    fill_in "User", with: @home_review.user_id
    click_on "Update Home review"

    assert_text "Home review was successfully updated"
    click_on "Back"
  end

  test "destroying a Home review" do
    visit home_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home review was successfully destroyed"
  end
end
