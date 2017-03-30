require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get betingelser' do
    get pages_betingelser_url
    assert_response :success
  end

end
