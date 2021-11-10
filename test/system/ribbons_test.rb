require "application_system_test_case"

class RibbonsTest < ApplicationSystemTestCase
  setup do
    @ribbon = ribbons(:one)
  end

  test "visiting the index" do
    visit ribbons_url
    assert_selector "h1", text: "Ribbons"
  end

  test "creating a Ribbon" do
    visit ribbons_url
    click_on "New Ribbon"

    fill_in "Film", with: @ribbon.film_id
    click_on "Create Ribbon"

    assert_text "Ribbon was successfully created"
    click_on "Back"
  end

  test "updating a Ribbon" do
    visit ribbons_url
    click_on "Edit", match: :first

    fill_in "Film", with: @ribbon.film_id
    click_on "Update Ribbon"

    assert_text "Ribbon was successfully updated"
    click_on "Back"
  end

  test "destroying a Ribbon" do
    visit ribbons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ribbon was successfully destroyed"
  end
end
