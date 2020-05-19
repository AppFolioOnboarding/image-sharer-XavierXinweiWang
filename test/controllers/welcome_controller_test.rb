require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get root_url
    assert_response :success
    assert_select 'h1', 'Greetings!'
    assert_select 'p', 'Welcome to the Image Sharer!'
  end
end
