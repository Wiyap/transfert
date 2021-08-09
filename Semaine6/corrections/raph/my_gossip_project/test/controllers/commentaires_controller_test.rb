require 'test_helper'

class CommentairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commentaires_new_url
    assert_response :success
  end

end
