class User < ApplicationRecord
  enum role: { client: 0, admin: 1 }

  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :validatable, :timeoutable, :omniauthable
end
