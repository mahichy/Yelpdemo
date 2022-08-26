require "application_system_test_case"

class RestaurentsTest < ApplicationSystemTestCase
  setup do
    @restaurent = restaurents(:one)
  end

  test "visiting the index" do
    visit restaurents_url
    assert_selector "h1", text: "Restaurents"
  end

  test "should create restaurent" do
    visit restaurents_url
    click_on "New restaurent"

    fill_in "Address", with: @restaurent.address
    fill_in "Name", with: @restaurent.name
    fill_in "Phone number", with: @restaurent.phone_number
    fill_in "Websit", with: @restaurent.websit
    click_on "Create Restaurent"

    assert_text "Restaurent was successfully created"
    click_on "Back"
  end

  test "should update Restaurent" do
    visit restaurent_url(@restaurent)
    click_on "Edit this restaurent", match: :first

    fill_in "Address", with: @restaurent.address
    fill_in "Name", with: @restaurent.name
    fill_in "Phone number", with: @restaurent.phone_number
    fill_in "Websit", with: @restaurent.websit
    click_on "Update Restaurent"

    assert_text "Restaurent was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurent" do
    visit restaurent_url(@restaurent)
    click_on "Destroy this restaurent", match: :first

    assert_text "Restaurent was successfully destroyed"
  end
end
