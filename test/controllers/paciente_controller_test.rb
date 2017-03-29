require 'test_helper'

class PacienteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get paciente_new_url
    assert_response :success
  end

  test "should get edit" do
    get paciente_edit_url
    assert_response :success
  end

  test "should get index" do
    get paciente_index_url
    assert_response :success
  end

  test "should get create" do
    get paciente_create_url
    assert_response :success
  end

  test "should get upate" do
    get paciente_upate_url
    assert_response :success
  end

end
