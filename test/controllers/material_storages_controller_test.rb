require 'test_helper'

class MaterialStoragesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get material_storages_index_url
    assert_response :success
  end

  test "should get new" do
    get material_storages_new_url
    assert_response :success
  end

end
