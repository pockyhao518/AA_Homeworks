class User < ApplicationRecord
    validates :user_name, presence:true, uniqueness: true
    validates :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, length:{minimum: 6}, allow_nil: true

    after_initialize :ensure_session_token

    has_many :cats,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Cat
    attr_reader :password

    def reset_session_token!
        self.update!(session_token: self.class.generate_session_token)
        self.session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        bcript_password = BCrypt::Password.new(self.password_digest)
        bcript_password.is_password?(password)
    end

    def self.find_by_credentials(user_name, password)
        user = User.find_by(user_name: user_name)
        return nil unless user && user.is_password?(password)
        user
    end

    private
    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end
end
