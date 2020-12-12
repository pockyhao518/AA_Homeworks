class Visit < ApplicationRecord
  belongs_to(:visitor,{
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
  })

  belongs_to(:shortened_url,{
    primary_key: :short_url,
    foreign_key: :shortened_url,
    class_name: :ShortenedUrl
  })

  def self.record_visit!(user, shortened_url)
    Visit.create!(
      user_id: user.id,
      shortened_url: shortened_url.short_url
    )
  end
end