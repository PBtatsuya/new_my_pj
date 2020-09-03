require 'test_helper'

class PerformerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get performer_index_url
    assert_response :success
  end

end
