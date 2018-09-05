require 'test_helper'

class EquipeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get equipe_index_url
    assert_response :success
  end

  test "should get create" do
    get equipe_create_url
    assert_response :success
  end

end
