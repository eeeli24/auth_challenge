class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :trackable,
  devise :database_authenticatable, :registerable, :validatable

  # Devise использует этот метод для проверки пользователя перед аутентификацией
  def active_for_authentication?
    super && self.active
  end

  # Devise выведет сообщение, если пользователь не прошел проверку
  def inactive_message
    "Inactive user, can't login"
  end

  def name
    "#{first_name} #{second_name}"
  end
end
