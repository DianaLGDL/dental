require 'test_helper'

class ModrecControllerTest < ActionDispatch::IntegrationTest
  test "should get pagrec" do
    get modrec_pagrec_url
    assert_response :success
  end

  test "should get histrec" do
    get modrec_histrec_url
    assert_response :success
  end

end
