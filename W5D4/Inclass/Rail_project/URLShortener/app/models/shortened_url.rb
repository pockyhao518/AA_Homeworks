class ShortenedUrl < ApplicationRecord
  validates :short_url, presence: true
  validates :short_url, uniqueness: true
  validates :user_id, presence: true

  has_many(:visitors,{
    primary_key: :short_url,
    foreign_key: :shortened_url,
    class_name: :Visit
  })

  belongs_to(:user, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
  })

  def num_clicks
    Visit.all.count
  end

  def num_uniques
    array = []
    Visit.all.each {|visit| array << visit.user_id}
    array.uniq.count
  end

  def num_recent_uniques
    
  end

  def self.random_code 
    random = SecureRandom.urlsafe_base64

    until !ShortenedUrl.exists?(random)
      random = SecureRandom.urlsafe_base64
    end

    return random 
  end 

  def self.shorter(user, long_url)
    ShortenedUrl.create!(
      user_id: user.id,
      long_url: long_url,
      short_url: ShortenedUrl.random_code
    )
  end
end
