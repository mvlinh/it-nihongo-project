require "application_system_test_case"

class HomelikesTest < ApplicationSystemTestCase
  setup do
    @homelike = homelikes(:one)
  end

  test "visiting the index" do
    visit homelikes_url
    assert_selector "h1", text: "Homelikes"
  end

  test "creating a Homelike" do
    visit homelikes_url
    click_on "New Homelike"

    fill_in "Home", with: @homelike.home_id
    fill_in "Status", with: @homelike.status
    fill_in "User", with: @homelike.user_id
    click_on "Create Homelike"

    assert_text "Homelike was successfully created"
    click_on "Back"
  end

  test "updating a Homelike" do
    visit homelikes_url
    click_on "Edit", match: :first

    fill_in "Home", with: @homelike.home_id
    fill_in "Status", with: @homelike.status
    fill_in "User", with: @homelike.user_id
    click_on "Update Homelike"

    assert_text "Homelike was successfully updated"
    click_on "Back"
  end

  test "destroying a Homelike" do
    visit homelikes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Homelike was successfully destroyed"
  end
end
