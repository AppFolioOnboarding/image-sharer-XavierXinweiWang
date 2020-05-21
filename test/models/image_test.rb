require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  test 'valid_upload' do
    valid_image = Image.new(
      title: 'Valid Title',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    )
    assert valid_image.valid?
  end

  test 'empty_title' do
    invalid_image = Image.new(
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    )
    assert_not invalid_image.valid?
  end

  test 'empty_url' do
    invalid_image = Image.new(title: 'Valid Title')
    assert_not invalid_image.valid?
  end

  test 'invalid_title' do
    invalid_image = Image.new(
      title: 'hi',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    )
    assert_not invalid_image.valid?
  end

  test 'invalid_url' do
    invalid_image = Image.new(
      title: 'Valid Title',
      url: 'invalid_url'
    )
    assert_not invalid_image.valid?
  end

  test 'non_image_url' do
    invalid_image = Image.new(
      title: 'Valid Title',
      url: 'https://www.google.com'
    )
    assert_not invalid_image.valid?
  end

  test 'duplicate_title_upload' do
    Image.new(
      title: 'Duplicate Title',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    ).save!
    invalid_image = Image.new(
      title: 'Duplicate Title',
      url: 'https://66.media.tumblr.com/c3e14c131d9042f9cda114fcd04e98b9/tumblr_oddphayQCY1v469oxo3_400.jpg'
    )
    assert_not invalid_image.valid?
  end

  test 'duplicate_url_upload' do
    Image.new(
      title: 'Unique Title',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    ).save!
    invalid_image = Image.new(
      title: 'Unique Title 2',
      url: 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    )
    assert_not invalid_image.valid?
  end
end
