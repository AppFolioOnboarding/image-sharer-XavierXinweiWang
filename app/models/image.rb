class Image < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 3 }

  validates :url, presence: true, url: true, uniqueness: true, format: {
    with: /\.(png|jpg|jpeg|svg|gif|bmp|tiff|exif)/i
  }
end
