require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get book_search_url
    assert_response :success
  end

end
