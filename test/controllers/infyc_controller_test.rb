require 'test_helper'

class InfycControllerTest < ActionDispatch::IntegrationTest
  test "should get sobren" do
    get infyc_sobren_url
    assert_response :success
  end

  test "should get contacto" do
    get infyc_contacto_url
    assert_response :success
  end

end
