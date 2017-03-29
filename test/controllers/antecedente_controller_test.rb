require 'test_helper'

class AntecedenteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get antecedente_new_url
    assert_response :success
  end

  test "should get create" do
    get antecedente_create_url
    assert_response :success
  end

end
