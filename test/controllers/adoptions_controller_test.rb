require 'test_helper'

class AdoptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get adoptions_create_url
    assert_response :success
  end

end
