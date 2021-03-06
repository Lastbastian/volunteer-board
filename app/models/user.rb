class User < ActiveRecord::Base

  has_many :events
  has_many :relationships
  has_many :followers, through: :relationships


  # validates :user_name, uniqueness: true, presence: true
  # validates :password_hash, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end