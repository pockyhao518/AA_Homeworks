class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  has_many(:visited_urls,{
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Visit
  })

  has_many(:shortened_urls, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ShortenedUrl
  })
end
