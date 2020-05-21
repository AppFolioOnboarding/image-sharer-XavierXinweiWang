require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_sample = Image.create!(
      title: 'Unique Title',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    )
  end

  test 'should get new' do
    get new_image_path
    assert_response :success
    assert_select 'h1', 'New Image'
  end

  test 'should get index' do
    get images_path
    assert_response :success
    assert_select 'h1', 'Image Gallery'
  end

  test 'should get show' do
    get image_path(@image_sample)
    assert_response :success
    assert_select 'h2', 'Unique Title'
  end

  test 'should create success' do
    assert_difference('Image.count', 1) do
      image_params = {
        title: 'Unique Title 2',
        url: 'https://66.media.tumblr.com/c3e14c131d9042f9cda114fcd04e98b9/tumblr_oddphayQCY1v469oxo3_400.jpg'
      }
      post images_path, params: { image: image_params }
    end
    assert_redirected_to image_path(Image.last)
  end

  test 'should create failure' do
    assert_no_difference 'Image.count' do
      image_params = {
        title: 'Unique Title',
        url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
      }
      post images_path, params: { image: image_params }
    end
    assert_response :unprocessable_entity
  end
end
