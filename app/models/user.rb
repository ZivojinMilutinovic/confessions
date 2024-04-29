class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: {user: 0, admin: 1}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def is_admin?
    role == 'admin'
  end
end
