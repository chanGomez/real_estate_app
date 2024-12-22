class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Enum-like behavior for string-based roles
  def buyer?
    role == "buyer"
  end

  def seller?
    role == "seller"
  end

  # Set default role after user creation
  after_initialize do
    self.role ||= "buyer"
  end
end
