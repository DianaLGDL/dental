require 'test_helper'

class ModadmControllerTest < ActionDispatch::IntegrationTest
  test "should get pagadm" do
    get modadm_pagadm_url
    assert_response :success
  end

  test "should get histadm" do
    get modadm_histadm_url
    assert_response :success
  end

end
