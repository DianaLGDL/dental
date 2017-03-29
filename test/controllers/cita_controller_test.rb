require 'test_helper'

class CitaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cita_index_url
    assert_response :success
  end

  test "should get new" do
    get cita_new_url
    assert_response :success
  end

  test "should get create" do
    get cita_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cita_destroy_url
    assert_response :success
  end

end
