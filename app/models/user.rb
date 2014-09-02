class User < ActiveRecord::Base
  after_initialize :ensure_session_token
  
  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}
  
  has_many(
  :goals,
  class_name: 'Goal',
  foreign_key: :user_id,
  primary_key: :id,
  dependent: :destroy
  )
  
  def self.new_session_token
    SecureRandom.urlsafe_base64
  end
  
  def self.find_by_credentials(username, password)
    u = User.find_by(username: username)
    return u if u && u.has_password?(password)
    nil
  end
  
  def reset_session_token!
    self.session_token = self.class.new_session_token
    save!
  end
  
  def ensure_session_token
    self.session_token ||= self.class.new_session_token
  end
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  def has_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  
  
  
  private
  attr_reader :password
end
