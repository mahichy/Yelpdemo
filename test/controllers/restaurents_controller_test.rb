require "test_helper"

class RestaurentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurent = restaurents(:one)
  end

  test "should get index" do
    get restaurents_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurent_url
    assert_response :success
  end

  test "should create restaurent" do
    assert_difference("Restaurent.count") do
      post restaurents_url, params: { restaurent: { address: @restaurent.address, name: @restaurent.name, phone_number: @restaurent.phone_number, websit: @restaurent.websit } }
    end

    assert_redirected_to restaurent_url(Restaurent.last)
  end

  test "should show restaurent" do
    get restaurent_url(@restaurent)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurent_url(@restaurent)
    assert_response :success
  end

  test "should update restaurent" do
    patch restaurent_url(@restaurent), params: { restaurent: { address: @restaurent.address, name: @restaurent.name, phone_number: @restaurent.phone_number, websit: @restaurent.websit } }
    assert_redirected_to restaurent_url(@restaurent)
  end

  test "should destroy restaurent" do
    assert_difference("Restaurent.count", -1) do
      delete restaurent_url(@restaurent)
    end

    assert_redirected_to restaurents_url
  end
end
