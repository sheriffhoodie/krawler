# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  email           :string
#  password_digest :string
#  session_token   :string
#  neighborhood    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :password_digest, :email, :session_token, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 8, allow_nil: true }

  after_initialize :ensure_session_token

  attr_reader :password

  has_many :crawls,
  foreign_key: :user_id,
  class_name: :Crawl

  def self.find_by_credentials(user_params)
    user = User.find_by(username: user_params[:username])
    user && user.is_password?(user_params[:password]) ? user : nil
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
  end

end
